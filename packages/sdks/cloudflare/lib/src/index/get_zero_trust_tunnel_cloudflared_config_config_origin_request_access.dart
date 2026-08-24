// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustTunnelCloudflaredConfigConfigOriginRequestAccess {
  /// Access applications that are allowed to reach this hostname for this Tunnel. Audience tags can be identified in the dashboard or via the List Access policies API.
  final pulumi.Input<List<String>> audTags;
  /// Deny traffic that has not fulfilled Access authorization.
  final pulumi.Input<bool> required;
  final pulumi.Input<String> teamName;

  /// Creates a new [GetZeroTrustTunnelCloudflaredConfigConfigOriginRequestAccess].
  /// [audTags] Access applications that are allowed to reach this hostname for this Tunnel. Audience tags can be identified in the dashboard or via the List Access policies API.
  /// [required] Deny traffic that has not fulfilled Access authorization.
  /// [teamName] Required.
  const GetZeroTrustTunnelCloudflaredConfigConfigOriginRequestAccess({
    required this.audTags,
    required this.required,
    required this.teamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audTags': audTags,
      'required': required,
      'teamName': teamName,
    };
  }

  factory GetZeroTrustTunnelCloudflaredConfigConfigOriginRequestAccess.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelCloudflaredConfigConfigOriginRequestAccess(
      audTags: pulumi.Input.fromValue((map['audTags'] as List).cast<String>()),
      required: pulumi.Input.fromValue(map['required'] as bool),
      teamName: pulumi.Input.fromValue(map['teamName'] as String),
    );
  }
}
