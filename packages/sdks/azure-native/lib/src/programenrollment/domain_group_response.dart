// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';

/// A group of edu domains scoped to an Entra tenant.
class DomainGroupResponse {
  /// The edu domain names in this group.
  final pulumi.Input<List<String>> domainNames;
  /// Failure detail when state is Failed or ActionRequired. Omitted otherwise.
  final pulumi.Input<ErrorDetailResponse> failureReason;
  /// The assessment state of this domain group.
  final pulumi.Input<String> state;
  /// The Entra tenant ID that owns these domains. Defaults to the caller's tenant if omitted.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [DomainGroupResponse].
  /// [domainNames] The edu domain names in this group.
  /// [failureReason] Failure detail when state is Failed or ActionRequired. Omitted otherwise.
  /// [state] The assessment state of this domain group.
  /// [tenantId] The Entra tenant ID that owns these domains. Defaults to the caller's tenant if omitted.
  const DomainGroupResponse({
    required this.domainNames,
    required this.failureReason,
    required this.state,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainNames': domainNames,
      'failureReason': pulumi.Input.mapInputValue<ErrorDetailResponse, Map<String, dynamic>>(failureReason, (value) => value.toMap()),
      'state': state,
      'tenantId': ?tenantId,
    };
  }

  factory DomainGroupResponse.fromMap(Map<String, dynamic> map) {
    return DomainGroupResponse(
      domainNames: pulumi.Input.fromValue((map['domainNames'] as List).cast<String>()),
      failureReason: pulumi.Input.fromValue(ErrorDetailResponse.fromMap((map['failureReason']! as Map).cast<String, dynamic>())),
      state: pulumi.Input.fromValue(map['state'] as String),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
