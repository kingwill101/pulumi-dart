/// Function app runtime name. Available options: dotnet-isolated, node, java, powershell, python, custom
enum RuntimeName {
  dotnetIsolated("dotnet-isolated"),
  node("node"),
  java("java"),
  powershell("powershell"),
  python("python"),
  custom("custom");

  const RuntimeName(this.wireValue);
  final String wireValue;

  static RuntimeName fromValue(String value) {
    for (final item in RuntimeName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuntimeName value: $value');
  }
}
