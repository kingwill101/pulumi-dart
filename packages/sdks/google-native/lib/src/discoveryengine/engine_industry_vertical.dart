import 'package:pulumi/pulumi.dart' as pulumi;

/// The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to `GENERIC`. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
enum EngineIndustryVertical implements pulumi.PulumiEnum<String> {
  industryVerticalUnspecified("INDUSTRY_VERTICAL_UNSPECIFIED"),
  generic("GENERIC"),
  media("MEDIA");

  const EngineIndustryVertical(this.wireValue);
  @override
  final String wireValue;

  static EngineIndustryVertical fromValue(String value) {
    for (final item in EngineIndustryVertical.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EngineIndustryVertical value: $value');
  }
}
