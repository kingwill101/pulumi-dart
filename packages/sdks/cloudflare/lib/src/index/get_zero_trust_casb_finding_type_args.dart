// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_casb_finding_type_filter.dart';

/// {@template pulumi_index_get_zero_trust_casb_finding_type_get_zero_trust_casb_finding_type_args_doc}
/// Arguments for getZeroTrustCasbFindingType.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_casb_finding_type_get_zero_trust_casb_finding_type_args_doc}
class GetZeroTrustCasbFindingTypeArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<GetZeroTrustCasbFindingTypeFilter?>? filter;
  final pulumi.Input<String?>? findingTypeId;

  /// Creates a new [GetZeroTrustCasbFindingTypeArgs].
  /// [accountId] Required.
  /// [filter] Optional.
  /// [findingTypeId] Optional.
  const GetZeroTrustCasbFindingTypeArgs({
    required this.accountId,
    this.filter,
    this.findingTypeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustCasbFindingTypeFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'findingTypeId': ?findingTypeId,
    };
  }

  factory GetZeroTrustCasbFindingTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCasbFindingTypeArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustCasbFindingTypeFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      findingTypeId: (() { final guardedValue = map['findingTypeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
