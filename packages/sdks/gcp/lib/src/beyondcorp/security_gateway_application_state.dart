// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_gateway_application_endpoint_matcher.dart';
import 'security_gateway_application_upstream.dart';

/// Input properties used for looking up and filtering SecurityGatewayApplication resources.
class SecurityGatewayApplicationState {
  /// User-settable Application resource ID.
  /// * Must start with a letter.
  /// * Must contain between 4-63 characters from `/a-z-/`.
  /// * Must end with a number or letter.
  final pulumi.Input<String>? applicationId;
  /// Output only. Timestamp when the resource was created.
  final pulumi.Input<String>? createTime;
  /// Optional. An arbitrary user-provided name for the Application resource.
  /// Cannot exceed 64 characters.
  final pulumi.Input<String>? displayName;
  /// Required. Endpoint matchers associated with an application.
  /// A combination of hostname and ports as endpoint matcher is used to match
  /// the application.
  /// Match conditions for OR logic.
  /// An array of match conditions to allow for multiple matching criteria.
  /// The rule is considered a match if one the conditions are met.
  /// The conditions can be one of the following combination
  /// (Hostname), (Hostname & Ports)
  /// EXAMPLES:
  /// Hostname - ("*.abc.com"), ("xyz.abc.com")
  /// Hostname and Ports - ("abc.com" and "22"), ("abc.com" and "22,33") etc
  /// Structure is documented below.
  final pulumi.Input<List<SecurityGatewayApplicationEndpointMatcher>>? endpointMatchers;
  /// Identifier. Name of the resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Type of the external application.
  /// Possible values are: `PROXY_GATEWAY`, `API_GATEWAY`.
  final pulumi.Input<String>? schema;
  /// ID of the Security Gateway resource this belongs to.
  final pulumi.Input<String>? securityGatewayId;
  /// Output only. Timestamp when the resource was last modified.
  final pulumi.Input<String>? updateTime;
  /// Optional. List of which upstream resource(s) to forward traffic to.
  /// Structure is documented below.
  final pulumi.Input<List<SecurityGatewayApplicationUpstream>>? upstreams;

  /// Creates a new [SecurityGatewayApplicationState].
  /// [applicationId] User-settable Application resource ID.
  /// [createTime] Output only. Timestamp when the resource was created.
  /// [displayName] Optional. An arbitrary user-provided name for the Application resource.
  /// [endpointMatchers] Required. Endpoint matchers associated with an application.
  /// [name] Identifier. Name of the resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [schema] Type of the external application.
  /// [securityGatewayId] ID of the Security Gateway resource this belongs to.
  /// [updateTime] Output only. Timestamp when the resource was last modified.
  /// [upstreams] Optional. List of which upstream resource(s) to forward traffic to.
  const SecurityGatewayApplicationState({
    this.applicationId,
    this.createTime,
    this.displayName,
    this.endpointMatchers,
    this.name,
    this.project,
    this.schema,
    this.securityGatewayId,
    this.updateTime,
    this.upstreams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'createTime': ?createTime,
      'displayName': ?displayName,
      'endpointMatchers': ?pulumi.Input.mapOptionalInputValue<List<SecurityGatewayApplicationEndpointMatcher>, List<Map<String, dynamic>>>(endpointMatchers, (value) => pulumi.Input.encodeList<SecurityGatewayApplicationEndpointMatcher, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
      'schema': ?schema,
      'securityGatewayId': ?securityGatewayId,
      'updateTime': ?updateTime,
      'upstreams': ?pulumi.Input.mapOptionalInputValue<List<SecurityGatewayApplicationUpstream>, List<Map<String, dynamic>>>(upstreams, (value) => pulumi.Input.encodeList<SecurityGatewayApplicationUpstream, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecurityGatewayApplicationState.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayApplicationState(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointMatchers: (() { final guardedValue = map['endpointMatchers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityGatewayApplicationEndpointMatcher>(guardedValue, (value) => SecurityGatewayApplicationEndpointMatcher.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGatewayId: (() { final guardedValue = map['securityGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      upstreams: (() { final guardedValue = map['upstreams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityGatewayApplicationUpstream>(guardedValue, (value) => SecurityGatewayApplicationUpstream.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

