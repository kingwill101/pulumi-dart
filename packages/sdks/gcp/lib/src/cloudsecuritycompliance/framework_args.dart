// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_cloud_control_detail.dart';

/// {@template pulumi_cloudsecuritycompliance_framework_framework_args_doc}
/// The set of arguments for Framework.
/// {@endtemplate}
/// {@macro pulumi_cloudsecuritycompliance_framework_framework_args_doc}
class FrameworkArgs {
  /// The details of the cloud controls directly added without any grouping in
  /// the framework.
  /// Structure is documented below.
  final pulumi.Input<List<FrameworkCloudControlDetail>?>? cloudControlDetails;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The description of the framework. The maximum length is 2000 characters.
  final pulumi.Input<String?>? description;
  /// Display name of the framework. The maximum length is 200 characters.
  final pulumi.Input<String?>? displayName;
  /// ID of the framework.
  /// This is not the full name of the framework.
  /// This is the last part of the full name of the framework.
  final pulumi.Input<String> frameworkId;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// (Optional, Deprecated)
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  ///
  /// &gt; **Warning:** Use `parent` instead.
  final pulumi.Input<String?>? organization;
  /// The parent resource in which to create the resource.
  /// Must be in one of the following formats:
  /// * `projects/{{project}}`
  /// * `organizations/{{organization}}`
  final pulumi.Input<String?>? parent;

  /// Creates a new [FrameworkArgs].
  /// [cloudControlDetails] The details of the cloud controls directly added without any grouping in
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the framework. The maximum length is 2000 characters.
  /// [displayName] Display name of the framework. The maximum length is 200 characters.
  /// [frameworkId] ID of the framework.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [organization] (Optional, Deprecated)
  /// [parent] The parent resource in which to create the resource.
  const FrameworkArgs({
    this.cloudControlDetails,
    this.deletionPolicy,
    this.description,
    this.displayName,
    required this.frameworkId,
    required this.location,
    this.organization,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudControlDetails': ?pulumi.Input.mapOptionalInputValue<List<FrameworkCloudControlDetail>, List<Map<String, dynamic>>>(cloudControlDetails, (value) => pulumi.Input.encodeList<FrameworkCloudControlDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'frameworkId': frameworkId,
      'location': location,
      'organization': ?organization,
      'parent': ?parent,
    };
  }

  factory FrameworkArgs.fromMap(Map<String, dynamic> map) {
    return FrameworkArgs(
      cloudControlDetails: (() { final guardedValue = map['cloudControlDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrameworkCloudControlDetail>(guardedValue, (value) => FrameworkCloudControlDetail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frameworkId: pulumi.Input.fromValue(map['frameworkId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
