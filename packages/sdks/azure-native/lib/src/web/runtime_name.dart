/// Function app runtime name. Available options: dotnet-isolated, node, java, powershell, python, custom
enum RuntimeName {
  valueDotnetIsolated("dotnet-isolated"),
  valueNode("node"),
  valueJava("java"),
  valuePowershell("powershell"),
  valuePython("python"),
  valueCustom("custom");

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

