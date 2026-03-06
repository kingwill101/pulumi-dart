// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bastion_active_session_response.dart';

/// Result data returned by getActiveSessions.
class GetActiveSessionsResult {
  /// The URL to get the next set of results.
  final String? nextLink;
  /// List of active sessions on the bastion.
  final List<BastionActiveSessionResponse>? value;

  /// Creates a new [GetActiveSessionsResult].
  /// [nextLink] The URL to get the next set of results.
  /// [value] List of active sessions on the bastion.
  const GetActiveSessionsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<BastionActiveSessionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetActiveSessionsResult.fromMap(Map<String, dynamic> map) {
    return GetActiveSessionsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<BastionActiveSessionResponse>(guardedValue, (value) => BastionActiveSessionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

