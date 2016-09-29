var foodPicked = {
  foodName: []
};

$(document).ready(function(){
  $('#search-form').on('submit', addFood);
  // $('.js-search-food').on('click', onSearchForm);
});

function addFood(event){
  event.preventDefault();
  event.stopPropagation();
  var food = $('#search').val();
  $('#search').val("");
  $('#log').append(food + ', ');
  foodPicked.foodName.push(food);
  console.log(foodPicked.foodName);
  getMealFromDB();
}

function getMealFromDB(){
  $.ajax({
      type: "POST",
      data: {foodName: foodPicked.foodName},
      url: "/compare",
      success: showMeals,
      error: function (error) {
          console.log("Did not work");
      }
  });
}

function showMeals(response) {
      console.log(response);
      $('.js-floating-box').empty();      
      for ( i = 0; i < response.meal_object.length; i++ ) {
        var image = response.meal_object[i]['photo']
        var foodName = response.meal_object[i].name
        // $('#results').append(foodName);
        // $("img").attr("src", image);
        // $('.recipe-link').prop('href', `/recipe/${response.meal_object[i].id}`)
        $('.hide').removeClass('hide');
        var mealBox = `
                <div class="col-sm-12 col-md-4">
                  <div class="thumbnail">
                    <img src="${image}" />
                      <div class="caption">
                        <h3 id="results">${foodName}</h3>
                        <p></p>
                        <p><a href="/recipe/${response.meal_object[i].id}" class="btn btn-success recipe-link" role="button">Ver</a>
                          <a href="#" class="btn btn-default" role="button">Guardar</a></p>
                      </div>
                  </div>
                </div>
          `;
        // preparetMealBox();
        $('.js-floating-box').append(mealBox);
      }
}


function preparetMealBox() {
// $('.js-floating-box').empty();
    var mealBox = `
        <h3>Te sugerimos:</h3>
          <div class="row">
            <div class="col-sm-6 col-md-4">
              <div class="thumbnail">
                <img src="" />
                  <div class="caption">
                    <h3 id="results"></h3>
                    <p></p>
                    <p><a href="#" class="btn btn-success recipe-link" role="button">Ver</a>
                      <a href="#" class="btn btn-default" role="button">Guardar</a></p>
                  </div>
              </div>
            </div>
          </div>
      `;
      $('.js-floating-box').append(mealBox);
    }
