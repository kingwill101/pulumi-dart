// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'radius_auth_server_response.dart';

/// Result data returned by listVirtualNetworkGatewayRadiusSecrets.
class ListVirtualNetworkGatewayRadiusSecretsResult {
  /// URL to get the next set of operation list results if there are any.
  final String? nextLink;
  /// List of Radius servers with respective radius secrets.
  final List<RadiusAuthServerResponse>? value;

  /// Creates a new [ListVirtualNetworkGatewayRadiusSecretsResult].
  /// [nextLink] URL to get the next set of operation list results if there are any.
  /// [value] List of Radius servers with respective radius secrets.
  ListVirtualNetworkGatewayRadiusSecretsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<RadiusAuthServerResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListVirtualNetworkGatewayRadiusSecretsResult.fromMap(Map<String, dynamic> map) {
    return ListVirtualNetworkGatewayRadiusSecretsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RadiusAuthServerResponse>(guardedValue, (value) => RadiusAuthServerResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

