// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_gateway_application_endpoint_matcher.dart';
import 'security_gateway_application_upstream.dart';

/// {@template pulumi_beyondcorp_security_gateway_application_security_gateway_application_args_doc}
/// The set of arguments for SecurityGatewayApplication.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_security_gateway_application_security_gateway_application_args_doc}
class SecurityGatewayApplicationArgs {
  /// User-settable Application resource ID.
  /// * Must start with a letter.
  /// * Must contain between 4-63 characters from `/a-z-/`.
  /// * Must end with a number or letter.
  final pulumi.Input<String> applicationId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Optional. An arbitrary user-provided name for the Application resource.
  /// Cannot exceed 64 characters.
  final pulumi.Input<String?>? displayName;
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
  final pulumi.Input<List<SecurityGatewayApplicationEndpointMatcher>?>? endpointMatchers;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Type of the external application.
  /// Possible values are: `PROXY_GATEWAY`, `API_GATEWAY`.
  final pulumi.Input<String?>? schema;
  /// ID of the Security Gateway resource this belongs to.
  final pulumi.Input<String> securityGatewayId;
  /// Optional. List of which upstream resource(s) to forward traffic to.
  /// Structure is documented below.
  final pulumi.Input<List<SecurityGatewayApplicationUpstream>?>? upstreams;

  /// Creates a new [SecurityGatewayApplicationArgs].
  /// [applicationId] User-settable Application resource ID.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Optional. An arbitrary user-provided name for the Application resource.
  /// [endpointMatchers] Required. Endpoint matchers associated with an application.
  /// [project] The ID of the project in which the resource belongs.
  /// [schema] Type of the external application.
  /// [securityGatewayId] ID of the Security Gateway resource this belongs to.
  /// [upstreams] Optional. List of which upstream resource(s) to forward traffic to.
  const SecurityGatewayApplicationArgs({
    required this.applicationId,
    this.deletionPolicy,
    this.displayName,
    this.endpointMatchers,
    this.project,
    this.schema,
    required this.securityGatewayId,
    this.upstreams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'endpointMatchers': ?pulumi.Input.mapOptionalInputValue<List<SecurityGatewayApplicationEndpointMatcher>, List<Map<String, dynamic>>>(endpointMatchers, (value) => pulumi.Input.encodeList<SecurityGatewayApplicationEndpointMatcher, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'schema': ?schema,
      'securityGatewayId': securityGatewayId,
      'upstreams': ?pulumi.Input.mapOptionalInputValue<List<SecurityGatewayApplicationUpstream>, List<Map<String, dynamic>>>(upstreams, (value) => pulumi.Input.encodeList<SecurityGatewayApplicationUpstream, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecurityGatewayApplicationArgs.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayApplicationArgs(
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointMatchers: (() { final guardedValue = map['endpointMatchers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityGatewayApplicationEndpointMatcher>(guardedValue, (value) => SecurityGatewayApplicationEndpointMatcher.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGatewayId: pulumi.Input.fromValue(map['securityGatewayId'] as String),
      upstreams: (() { final guardedValue = map['upstreams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityGatewayApplicationUpstream>(guardedValue, (value) => SecurityGatewayApplicationUpstream.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
