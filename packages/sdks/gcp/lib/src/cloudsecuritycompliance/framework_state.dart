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
  /// organizations/{organization}/locations/{{location}}/frameworks/{framework_id}
  final pulumi.Input<String>? name;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? organization;
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
  /// [description] The description of the framework. The maximum length is 2000 characters.
  /// [displayName] Display name of the framework. The maximum length is 200 characters.
  /// [frameworkId] ID of the framework.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [majorRevisionId] Major revision of the framework incremented in ascending order.
  /// [name] Identifier. The name of the framework.
  /// [organization] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [supportedCloudProviders] cloud providers supported
  /// [supportedEnforcementModes] The supported enforcement modes of the framework.
  /// [supportedTargetResourceTypes] target resource types supported by the Framework.
  /// [type] The type of the framework. The default is TYPE_CUSTOM.
  FrameworkState({
    pulumi.Output<List<String>>? categories,
    pulumi.Output<List<FrameworkCloudControlDetail>>? cloudControlDetails,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? frameworkId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? majorRevisionId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? organization,
    pulumi.Output<List<String>>? supportedCloudProviders,
    pulumi.Output<List<String>>? supportedEnforcementModes,
    pulumi.Output<List<String>>? supportedTargetResourceTypes,
    pulumi.Output<String>? type,
  }) :
      categories = pulumi.Input.asOptionalInput<List<String>>(categories),
      cloudControlDetails = pulumi.Input.asOptionalInput<List<FrameworkCloudControlDetail>>(cloudControlDetails),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      frameworkId = pulumi.Input.asOptionalInput<String>(frameworkId),
      location = pulumi.Input.asOptionalInput<String>(location),
      majorRevisionId = pulumi.Input.asOptionalInput<String>(majorRevisionId),
      name = pulumi.Input.asOptionalInput<String>(name),
      organization = pulumi.Input.asOptionalInput<String>(organization),
      supportedCloudProviders = pulumi.Input.asOptionalInput<List<String>>(supportedCloudProviders),
      supportedEnforcementModes = pulumi.Input.asOptionalInput<List<String>>(supportedEnforcementModes),
      supportedTargetResourceTypes = pulumi.Input.asOptionalInput<List<String>>(supportedTargetResourceTypes),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories': ?categories,
      'cloudControlDetails': ?pulumi.Input.mapOptionalInputValue<List<FrameworkCloudControlDetail>, List<Map<String, dynamic>>>(cloudControlDetails, (value) => pulumi.Input.encodeList<FrameworkCloudControlDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'displayName': ?displayName,
      'frameworkId': ?frameworkId,
      'location': ?location,
      'majorRevisionId': ?majorRevisionId,
      'name': ?name,
      'organization': ?organization,
      'supportedCloudProviders': ?supportedCloudProviders,
      'supportedEnforcementModes': ?supportedEnforcementModes,
      'supportedTargetResourceTypes': ?supportedTargetResourceTypes,
      'type': ?type,
    };
  }

  factory FrameworkState.fromMap(Map<String, dynamic> map) {
    return FrameworkState(
      categories: map['categories'] == null ? null : pulumi.Output.create<List<String>>((map['categories'] as List).cast<String>()),
      cloudControlDetails: map['cloudControlDetails'] == null ? null : pulumi.Output.create<List<FrameworkCloudControlDetail>>(pulumi.Input.decodeList<FrameworkCloudControlDetail>(map['cloudControlDetails'], (value) => FrameworkCloudControlDetail.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      frameworkId: map['frameworkId'] == null ? null : pulumi.Output.create<String>(map['frameworkId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      majorRevisionId: map['majorRevisionId'] == null ? null : pulumi.Output.create<String>(map['majorRevisionId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      organization: map['organization'] == null ? null : pulumi.Output.create<String>(map['organization'] as String),
      supportedCloudProviders: map['supportedCloudProviders'] == null ? null : pulumi.Output.create<List<String>>((map['supportedCloudProviders'] as List).cast<String>()),
      supportedEnforcementModes: map['supportedEnforcementModes'] == null ? null : pulumi.Output.create<List<String>>((map['supportedEnforcementModes'] as List).cast<String>()),
      supportedTargetResourceTypes: map['supportedTargetResourceTypes'] == null ? null : pulumi.Output.create<List<String>>((map['supportedTargetResourceTypes'] as List).cast<String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

