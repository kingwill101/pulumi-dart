// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v1beta1_source_securitycenter_v1beta1_args_doc}
/// The set of arguments for Source.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1beta1_source_securitycenter_v1beta1_args_doc}
class SourceSecuritycenterV1beta1Args {
  /// The description of the source (max of 1024 characters). Example: "Web Security Scanner is a web security scanner for common vulnerabilities in App Engine applications. It can automatically scan and detect four common vulnerabilities, including cross-site-scripting (XSS), Flash injection, mixed content (HTTP in HTTPS), and outdated/insecure libraries."
  final pulumi.Input<String>? description;
  /// The source's display name. A source's display name must be unique amongst its siblings, for example, two sources with the same parent can't share the same display name. The display name must have a length between 1 and 64 characters (inclusive).
  final pulumi.Input<String>? displayName;
  /// The relative resource name of this source. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: "organizations/{organization_id}/sources/{source_id}"
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Creates a new [SourceSecuritycenterV1beta1Args].
  /// [description] The description of the source (max of 1024 characters). Example: "Web Security Scanner is a web security scanner for common vulnerabilities in App Engine applications. It can automatically scan and detect four common vulnerabilities, including cross-site-scripting (XSS), Flash injection, mixed content (HTTP in HTTPS), and outdated/insecure libraries."
  /// [displayName] The source's display name. A source's display name must be unique amongst its siblings, for example, two sources with the same parent can't share the same display name. The display name must have a length between 1 and 64 characters (inclusive).
  /// [name] The relative resource name of this source. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: "organizations/{organization_id}/sources/{source_id}"
  /// [organizationId] Required.
  SourceSecuritycenterV1beta1Args({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? name,
    required pulumi.Output<String> organizationId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'organizationId': organizationId,
    };
  }

  factory SourceSecuritycenterV1beta1Args.fromMap(Map<String, dynamic> map) {
    return SourceSecuritycenterV1beta1Args(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
    );
  }
}

