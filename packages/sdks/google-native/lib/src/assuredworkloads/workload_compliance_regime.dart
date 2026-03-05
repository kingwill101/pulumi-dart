/// Required. Immutable. Compliance Regime associated with this workload.
enum WorkloadComplianceRegime {
  complianceRegimeUnspecified("COMPLIANCE_REGIME_UNSPECIFIED"),
  il4("IL4"),
  cjis("CJIS"),
  fedrampHigh("FEDRAMP_HIGH"),
  fedrampModerate("FEDRAMP_MODERATE"),
  usRegionalAccess("US_REGIONAL_ACCESS"),
  hipaa("HIPAA"),
  hitrust("HITRUST"),
  euRegionsAndSupport("EU_REGIONS_AND_SUPPORT"),
  caRegionsAndSupport("CA_REGIONS_AND_SUPPORT"),
  itar("ITAR"),
  auRegionsAndUsSupport("AU_REGIONS_AND_US_SUPPORT"),
  assuredWorkloadsForPartners("ASSURED_WORKLOADS_FOR_PARTNERS"),
  isrRegions("ISR_REGIONS"),
  isrRegionsAndSupport("ISR_REGIONS_AND_SUPPORT"),
  caProtectedB("CA_PROTECTED_B"),
  il5("IL5"),
  il2("IL2"),
  jpRegionsAndSupport("JP_REGIONS_AND_SUPPORT");

  const WorkloadComplianceRegime(this.wireValue);
  final String wireValue;

  static WorkloadComplianceRegime fromValue(String value) {
    for (final item in WorkloadComplianceRegime.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkloadComplianceRegime value: $value');
  }
}

