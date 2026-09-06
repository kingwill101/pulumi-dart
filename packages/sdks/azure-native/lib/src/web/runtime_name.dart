import 'package:pulumi/pulumi.dart' as pulumi;

/// Function app runtime name. Available options: dotnet-isolated, node, java, powershell, python, custom
enum RuntimeName implements pulumi.PulumiEnum<String> {
  dotnetIsolated("dotnet-isolated"),
  node("node"),
  java("java"),
  powershell("powershell"),
  python("python"),
  custom("custom");

  const RuntimeName(this.wireValue);
  @override
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
