// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';

/// Defines the resource properties.
class GuestAgentProfileResponse {
  /// The hybrid machine agent full version.
  final String agentVersion;
  /// Gets or sets the Public Key provided by the client for enabling guest management.
  final String? clientPublicKey;
  /// Details about the error state.
  final List<ErrorDetailResponse> errorDetails;
  /// The time of the last status change.
  final String lastStatusChange;
  /// The status of the hybrid machine agent.
  final String status;
  /// Specifies the VM's unique SMBIOS ID.
  final String vmUuid;

  /// Creates a new [GuestAgentProfileResponse].
  /// [agentVersion] The hybrid machine agent full version.
  /// [clientPublicKey] Gets or sets the Public Key provided by the client for enabling guest management.
  /// [errorDetails] Details about the error state.
  /// [lastStatusChange] The time of the last status change.
  /// [status] The status of the hybrid machine agent.
  /// [vmUuid] Specifies the VM's unique SMBIOS ID.
  GuestAgentProfileResponse({
    required this.agentVersion,
    this.clientPublicKey,
    required this.errorDetails,
    required this.lastStatusChange,
    required this.status,
    required this.vmUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentVersion': agentVersion,
      'clientPublicKey': ?clientPublicKey,
      'errorDetails': pulumi.Input.encodeList<ErrorDetailResponse, Map<String, dynamic>>(errorDetails, (value) => value.toMap()),
      'lastStatusChange': lastStatusChange,
      'status': status,
      'vmUuid': vmUuid,
    };
  }

  factory GuestAgentProfileResponse.fromMap(Map<String, dynamic> map) {
    return GuestAgentProfileResponse(
      agentVersion: map['agentVersion'] as String,
      clientPublicKey: map['clientPublicKey'] == null ? null : map['clientPublicKey'] as String,
      errorDetails: pulumi.Input.decodeList<ErrorDetailResponse>(map['errorDetails'], (value) => ErrorDetailResponse.fromMap((value as Map).cast<String, dynamic>())),
      lastStatusChange: map['lastStatusChange'] as String,
      status: map['status'] as String,
      vmUuid: map['vmUuid'] as String,
    );
  }
}

