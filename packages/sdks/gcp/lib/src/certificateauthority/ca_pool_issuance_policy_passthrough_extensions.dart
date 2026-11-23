// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ca_pool_issuance_policy_passthrough_extensions_additional_extension.dart';

class CaPoolIssuancePolicyPassthroughExtensions {
  /// A set of ObjectIds identifying custom X.509 extensions.
  /// Will be combined with knownExtensions to determine the full set of X.509 extensions.
  /// Structure is documented below.
  final pulumi.Input<List<CaPoolIssuancePolicyPassthroughExtensionsAdditionalExtension>?>? additionalExtensions;
  /// A set of named X.509 extensions. Will be combined with additionalExtensions to determine the full set of X.509 extensions.
  /// Acceptable values are: `BASE_KEY_USAGE`, `EXTENDED_KEY_USAGE`, `CA_OPTIONS`, `POLICY_IDS`, `AIA_OCSP_SERVERS`, `NAME_CONSTRAINTS`.
  final pulumi.Input<List<String>?>? knownExtensions;

  /// Creates a new [CaPoolIssuancePolicyPassthroughExtensions].
  /// [additionalExtensions] A set of ObjectIds identifying custom X.509 extensions.
  /// [knownExtensions] A set of named X.509 extensions. Will be combined with additionalExtensions to determine the full set of X.509 extensions.
  const CaPoolIssuancePolicyPassthroughExtensions({
    this.additionalExtensions,
    this.knownExtensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExtensions': ?pulumi.Input.mapOptionalInputValue<List<CaPoolIssuancePolicyPassthroughExtensionsAdditionalExtension>, List<Map<String, dynamic>>>(additionalExtensions, (value) => pulumi.Input.encodeList<CaPoolIssuancePolicyPassthroughExtensionsAdditionalExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'knownExtensions': ?knownExtensions,
    };
  }

  factory CaPoolIssuancePolicyPassthroughExtensions.fromMap(Map<String, dynamic> map) {
    return CaPoolIssuancePolicyPassthroughExtensions(
      additionalExtensions: (() { final guardedValue = map['additionalExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CaPoolIssuancePolicyPassthroughExtensionsAdditionalExtension>(guardedValue, (value) => CaPoolIssuancePolicyPassthroughExtensionsAdditionalExtension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      knownExtensions: (() { final guardedValue = map['knownExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
