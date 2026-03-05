/// The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: If unspecified, default to `GENERIC`. Vertical on Engine has to match vertical of the DataStore liniked to the engine.
enum EngineIndustryVertical {
  industryVerticalUnspecified("INDUSTRY_VERTICAL_UNSPECIFIED"),
  generic("GENERIC"),
  media("MEDIA");

  const EngineIndustryVertical(this.wireValue);
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

