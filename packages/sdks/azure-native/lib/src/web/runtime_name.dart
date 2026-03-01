/// Function app runtime name. Available options: dotnet-isolated, node, java, powershell, python, custom
enum RuntimeName {
  valueDotnetIsolated("dotnet-isolated"),
  valueNode("node"),
  valueJava("java"),
  valuePowershell("powershell"),
  valuePython("python"),
  valueCustom("custom");

  const RuntimeName(this.value);
  final String value;

  static RuntimeName fromValue(String value) {
    for (final item in RuntimeName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuntimeName value: $value');
  }
}

