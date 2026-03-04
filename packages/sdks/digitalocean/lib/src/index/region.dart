enum Region {
  nYC1("nyc1"),
  nYC2("nyc2"),
  nYC3("nyc3"),
  sGP1("sgp1"),
  lON1("lon1"),
  aMS2("ams2"),
  aMS3("ams3"),
  fRA1("fra1"),
  tOR1("tor1"),
  sFO1("sfo1"),
  sFO2("sfo2"),
  sFO3("sfo3"),
  bLR1("blr1"),
  sYD1("syd1");

  const Region(this.wireValue);
  final String wireValue;

  static Region fromValue(String value) {
    for (final item in Region.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Region value: $value');
  }
}
