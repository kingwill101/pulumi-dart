/// Parameter determining whether NVA in spoke vnet is bypassed for traffic with destination in spoke.
enum VnetLocalRouteOverrideCriteria {
  valueContains("Contains"),
  valueEqual("Equal");

  const VnetLocalRouteOverrideCriteria(this.value);
  final String value;

  static VnetLocalRouteOverrideCriteria fromValue(String value) {
    for (final item in VnetLocalRouteOverrideCriteria.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VnetLocalRouteOverrideCriteria value: $value');
  }
}

