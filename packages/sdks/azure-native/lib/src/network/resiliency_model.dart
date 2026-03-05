/// Property to indicate if the Express Route Gateway has resiliency model of MultiHomed or SingleHomed
enum ResiliencyModel {
  valueSingleHomed("SingleHomed"),
  valueMultiHomed("MultiHomed");

  const ResiliencyModel(this.wireValue);
  final String wireValue;

  static ResiliencyModel fromValue(String value) {
    for (final item in ResiliencyModel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResiliencyModel value: $value');
  }
}

