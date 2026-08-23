// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_cloud_control_detail.dart';

/// Input properties used for looking up and filtering Framework resources.
class FrameworkState {
  /// The category of the framework.
  final pulumi.Input<List<String>>? categories;
  /// The details of the cloud controls directly added without any grouping in
  /// the framework.
  /// Structure is documented below.
  final pulumi.Input<List<FrameworkCloudControlDetail>>? cloudControlDetails;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The description of the framework. The maximum length is 2000 characters.
  final pulumi.Input<String>? description;
  /// Display name of the framework. The maximum length is 200 characters.
  final pulumi.Input<String>? displayName;
  /// ID of the framework.
  /// This is not the full name of the framework.
  /// This is the last part of the full name of the framework.
  final pulumi.Input<String>? frameworkId;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Major revision of the framework incremented in ascending order.
  final pulumi.Input<String>? majorRevisionId;
  /// Identifier. The name of the framework.
  /// Format:
  /// {parent}/locations/{location}/frameworks/{framework_id}
  final pulumi.Input<String>? name;
  /// (Optional, Deprecated)
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  ///
  /// &gt; **Warning:** Use `parent` instead.
  final pulumi.Input<String>? organization;
  /// The parent resource in which to create the resource.
  /// Must be in one of the following formats:
  /// * `projects/{{project}}`
  /// * `organizations/{{organization}}`
  final pulumi.Input<String>? parent;
  /// cloud providers supported
  final pulumi.Input<List<String>>? supportedCloudProviders;
  /// The supported enforcement modes of the framework.
  final pulumi.Input<List<String>>? supportedEnforcementModes;
  /// target resource types supported by the Framework.
  final pulumi.Input<List<String>>? supportedTargetResourceTypes;
  /// The type of the framework. The default is TYPE_CUSTOM.
  /// Possible values:
  /// BUILT_IN
  /// CUSTOM
  final pulumi.Input<String>? type;

  /// Creates a new [FrameworkState].
  /// [categories] The category of the framework.
  /// [cloudControlDetails] The details of the cloud controls directly added without any grouping in
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the framework. The maximum length is 2000 characters.
  /// [displayName] Display name of the framework. The maximum length is 200 characters.
  /// [frameworkId] ID of the framework.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [majorRevisionId] Major revision of the framework incremented in ascending order.
  /// [name] Identifier. The name of the framework.
  /// [organization] (Optional, Deprecated)
  /// [parent] The parent resource in which to create the resource.
  /// [supportedCloudProviders] cloud providers supported
  /// [supportedEnforcementModes] The supported enforcement modes of the framework.
  /// [supportedTargetResourceTypes] target resource types supported by the Framework.
  /// [type] The type of the framework. The default is TYPE_CUSTOM.
  const FrameworkState({
    this.categories,
    this.cloudControlDetails,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.frameworkId,
    this.location,
    this.majorRevisionId,
    this.name,
    this.organization,
    this.parent,
    this.supportedCloudProviders,
    this.supportedEnforcementModes,
    this.supportedTargetResourceTypes,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories': ?categories,
      'cloudControlDetails': ?pulumi.Input.mapOptionalInputValue<List<FrameworkCloudControlDetail>, List<Map<String, dynamic>>>(cloudControlDetails, (value) => pulumi.Input.encodeList<FrameworkCloudControlDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'frameworkId': ?frameworkId,
      'location': ?location,
      'majorRevisionId': ?majorRevisionId,
      'name': ?name,
      'organization': ?organization,
      'parent': ?parent,
      'supportedCloudProviders': ?supportedCloudProviders,
      'supportedEnforcementModes': ?supportedEnforcementModes,
      'supportedTargetResourceTypes': ?supportedTargetResourceTypes,
      'type': ?type,
    };
  }

  factory FrameworkState.fromMap(Map<String, dynamic> map) {
    return FrameworkState(
      categories: (() { final guardedValue = map['categories']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cloudControlDetails: (() { final guardedValue = map['cloudControlDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrameworkCloudControlDetail>(guardedValue, (value) => FrameworkCloudControlDetail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frameworkId: (() { final guardedValue = map['frameworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      majorRevisionId: (() { final guardedValue = map['majorRevisionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportedCloudProviders: (() { final guardedValue = map['supportedCloudProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      supportedEnforcementModes: (() { final guardedValue = map['supportedEnforcementModes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      supportedTargetResourceTypes: (() { final guardedValue = map['supportedTargetResourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
