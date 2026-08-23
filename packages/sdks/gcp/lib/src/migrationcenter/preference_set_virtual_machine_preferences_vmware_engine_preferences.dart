// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreferenceSetVirtualMachinePreferencesVmwareEnginePreferences {
  /// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with. Possible values: `COMMITMENT_PLAN_UNSPECIFIED`, `ON_DEMAND`, `COMMITMENT_1_YEAR_MONTHLY_PAYMENTS`, `COMMITMENT_3_YEAR_MONTHLY_PAYMENTS`, `COMMITMENT_1_YEAR_UPFRONT_PAYMENT`, `COMMITMENT_3_YEAR_UPFRONT_PAYMENT`,
  final pulumi.Input<String>? commitmentPlan;
  /// CPU overcommit ratio. Acceptable values are between 1.0 and 8.0, with 0.1 increment.
  final pulumi.Input<double>? cpuOvercommitRatio;
  /// Memory overcommit ratio. Acceptable values are 1.0, 1.25, 1.5, 1.75 and 2.0.
  final pulumi.Input<double>? memoryOvercommitRatio;
  /// The Deduplication and Compression ratio is based on the logical (Used Before) space required to store data before applying deduplication and compression, in relation to the physical (Used After) space required after applying deduplication and compression. Specifically, the ratio is the Used Before space divided by the Used After space. For example, if the Used Before space is 3 GB, but the physical Used After space is 1 GB, the deduplication and compression ratio is 3x. Acceptable values are between 1.0 and 4.0.
  final pulumi.Input<double>? storageDeduplicationCompressionRatio;

  /// Creates a new [PreferenceSetVirtualMachinePreferencesVmwareEnginePreferences].
  /// [commitmentPlan] Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with. Possible values: `COMMITMENT_PLAN_UNSPECIFIED`, `ON_DEMAND`, `COMMITMENT_1_YEAR_MONTHLY_PAYMENTS`, `COMMITMENT_3_YEAR_MONTHLY_PAYMENTS`, `COMMITMENT_1_YEAR_UPFRONT_PAYMENT`, `COMMITMENT_3_YEAR_UPFRONT_PAYMENT`,
  /// [cpuOvercommitRatio] CPU overcommit ratio. Acceptable values are between 1.0 and 8.0, with 0.1 increment.
  /// [memoryOvercommitRatio] Memory overcommit ratio. Acceptable values are 1.0, 1.25, 1.5, 1.75 and 2.0.
  /// [storageDeduplicationCompressionRatio] The Deduplication and Compression ratio is based on the logical (Used Before) space required to store data before applying deduplication and compression, in relation to the physical (Used After) space required after applying deduplication and compression. Specifically, the ratio is the Used Before space divided by the Used After space. For example, if the Used Before space is 3 GB, but the physical Used After space is 1 GB, the deduplication and compression ratio is 3x. Acceptable values are between 1.0 and 4.0.
  const PreferenceSetVirtualMachinePreferencesVmwareEnginePreferences({
    this.commitmentPlan,
    this.cpuOvercommitRatio,
    this.memoryOvercommitRatio,
    this.storageDeduplicationCompressionRatio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitmentPlan': ?commitmentPlan,
      'cpuOvercommitRatio': ?cpuOvercommitRatio,
      'memoryOvercommitRatio': ?memoryOvercommitRatio,
      'storageDeduplicationCompressionRatio': ?storageDeduplicationCompressionRatio,
    };
  }

  factory PreferenceSetVirtualMachinePreferencesVmwareEnginePreferences.fromMap(Map<String, dynamic> map) {
    return PreferenceSetVirtualMachinePreferencesVmwareEnginePreferences(
      commitmentPlan: (() { final guardedValue = map['commitmentPlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuOvercommitRatio: (() { final guardedValue = map['cpuOvercommitRatio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      memoryOvercommitRatio: (() { final guardedValue = map['memoryOvercommitRatio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      storageDeduplicationCompressionRatio: (() { final guardedValue = map['storageDeduplicationCompressionRatio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
