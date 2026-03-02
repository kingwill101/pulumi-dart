// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WafPolicySignaturesSetting {
  final pulumi.Input<bool>? placesignaturesInStaging;
  /// setting true will enforce all signature from staging
  final pulumi.Input<bool>? signatureStaging;

  /// Creates a new [WafPolicySignaturesSetting].
  /// [placesignaturesInStaging] Optional.
  /// [signatureStaging] setting true will enforce all signature from staging
  WafPolicySignaturesSetting({
    this.placesignaturesInStaging,
    this.signatureStaging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'placesignaturesInStaging': ?placesignaturesInStaging,
      'signatureStaging': ?signatureStaging,
    };
  }

  factory WafPolicySignaturesSetting.fromMap(Map<String, dynamic> map) {
    return WafPolicySignaturesSetting(
      placesignaturesInStaging: map['placesignaturesInStaging'] == null ? null : (map['placesignaturesInStaging']! as bool).input(),
      signatureStaging: map['signatureStaging'] == null ? null : (map['signatureStaging']! as bool).input(),
    );
  }
}

