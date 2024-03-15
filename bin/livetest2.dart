void main() {

  List<Map<String, dynamic>> fruits = [
    {'name': 'Mango', 'color':'Yellow','price':5.0},
    {'name': 'Apple', 'color':'Red','price':4.0},
    {'name': 'Watermelon','color':'Green','price': 3.0},
  ];
  print('Original fruit details before discount:');
  displayFruitDetails(fruits);
  applyPriceDiscount(fruits,15);
  print('Fruit details after applying 15% discount:');
  displayFruitDetails(fruits);

}
void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print('Name: ${fruit['name']},Color: ${fruit['color']}, Price:${fruit['price']}');
  }

}
void applyPriceDiscount(List<Map<String,dynamic>>fruits,double discountPercentage) {
  for (var fruit in fruits) {

    double presentPrice = fruit['price'];
    double discountedPrice = presentPrice-(presentPrice * 0.15);
    fruit['price'] = discountedPrice;
  }
}
