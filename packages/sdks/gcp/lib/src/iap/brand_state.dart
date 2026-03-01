// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Brand resources.
class BrandState {
  /// Application name displayed on OAuth consent screen.
  final pulumi.Input<String>? applicationTitle;
  /// Output only. Identifier of the brand, in the format `projects/{project_number}/brands/{brand_id}`
  /// NOTE: The name can also be expressed as `projects/{project_id}/brands/{brand_id}`, e.g. when importing.
  /// NOTE: The brand identification corresponds to the project number as only one
  /// brand can be created per project.
  final pulumi.Input<String>? name;
  /// Whether the brand is only intended for usage inside the GSuite organization only.
  final pulumi.Input<bool>? orgInternalOnly;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Support email displayed on the OAuth consent screen. Can be either a
  /// user or group email. When a user email is specified, the caller must
  /// be the user with the associated email address. When a group email is
  /// specified, the caller can be either a user or a service account which
  /// is an owner of the specified group in Cloud Identity.
  final pulumi.Input<String>? supportEmail;

  /// Creates a new [BrandState].
  /// [applicationTitle] Application name displayed on OAuth consent screen.
  /// [name] Output only. Identifier of the brand, in the format `projects/{project_number}/brands/{brand_id}`
  /// [orgInternalOnly] Whether the brand is only intended for usage inside the GSuite organization only.
  /// [project] The ID of the project in which the resource belongs.
  /// [supportEmail] Support email displayed on the OAuth consent screen. Can be either a
  BrandState({
    pulumi.Output<String>? applicationTitle,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? orgInternalOnly,
    pulumi.Output<String>? project,
    pulumi.Output<String>? supportEmail,
  }) :
      applicationTitle = pulumi.Input.asOptionalInput<String>(applicationTitle),
      name = pulumi.Input.asOptionalInput<String>(name),
      orgInternalOnly = pulumi.Input.asOptionalInput<bool>(orgInternalOnly),
      project = pulumi.Input.asOptionalInput<String>(project),
      supportEmail = pulumi.Input.asOptionalInput<String>(supportEmail);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationTitle': ?applicationTitle,
      'name': ?name,
      'orgInternalOnly': ?orgInternalOnly,
      'project': ?project,
      'supportEmail': ?supportEmail,
    };
  }

  factory BrandState.fromMap(Map<String, dynamic> map) {
    return BrandState(
      applicationTitle: map['applicationTitle'] == null ? null : pulumi.Output.create<String>(map['applicationTitle'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      orgInternalOnly: map['orgInternalOnly'] == null ? null : pulumi.Output.create<bool>(map['orgInternalOnly'] as bool),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      supportEmail: map['supportEmail'] == null ? null : pulumi.Output.create<String>(map['supportEmail'] as String),
    );
  }
}

