// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DatastoreDatalakeGen2 resources.
class DatastoreDatalakeGen2State {
  /// An URL used for authentication.
  final pulumi.Input<String>? authorityUrl;
  /// The object ID of the Service Principal.
  final pulumi.Input<String>? clientId;
  /// The secret of the Service Principal.
  final pulumi.Input<String>? clientSecret;
  /// Text used to describe the asset. Changing this forces a new Machine Learning DataStore to be created.
  final pulumi.Input<String>? description;
  /// Indicates whether this Machines Learning DataStore is the default for the Workspace.
  final pulumi.Input<bool>? isDefault;
  /// The name of the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created.
  final pulumi.Input<String>? name;
  /// Specifies which identity to use when retrieving data from the specified source. Defaults to `None`. Possible values are `None`, `WorkspaceSystemAssignedIdentity` and `WorkspaceUserAssignedIdentity`.
  final pulumi.Input<String>? serviceDataIdentity;
  /// The ID of the Storage Account Container. Changing this forces a new Machine Learning DataStore to be created.
  final pulumi.Input<String>? storageContainerId;
  /// A mapping of tags which should be assigned to the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Tenant which the Service Principal belongs to.
  final pulumi.Input<String>? tenantId;
  /// The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning DataStore to be created.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [DatastoreDatalakeGen2State].
  /// [authorityUrl] An URL used for authentication.
  /// [clientId] The object ID of the Service Principal.
  /// [clientSecret] The secret of the Service Principal.
  /// [description] Text used to describe the asset. Changing this forces a new Machine Learning DataStore to be created.
  /// [isDefault] Indicates whether this Machines Learning DataStore is the default for the Workspace.
  /// [name] The name of the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created.
  /// [serviceDataIdentity] Specifies which identity to use when retrieving data from the specified source. Defaults to `None`. Possible values are `None`, `WorkspaceSystemAssignedIdentity` and `WorkspaceUserAssignedIdentity`.
  /// [storageContainerId] The ID of the Storage Account Container. Changing this forces a new Machine Learning DataStore to be created.
  /// [tags] A mapping of tags which should be assigned to the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created.
  /// [tenantId] The ID of the Tenant which the Service Principal belongs to.
  /// [workspaceId] The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning DataStore to be created.
  DatastoreDatalakeGen2State({
    pulumi.Output<String>? authorityUrl,
    pulumi.Output<String>? clientId,
    pulumi.Output<String>? clientSecret,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? isDefault,
    pulumi.Output<String>? name,
    pulumi.Output<String>? serviceDataIdentity,
    pulumi.Output<String>? storageContainerId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? tenantId,
    pulumi.Output<String>? workspaceId,
  }) :
      authorityUrl = pulumi.Input.asOptionalInput<String>(authorityUrl),
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      clientSecret = pulumi.Input.asOptionalInput<String>(clientSecret),
      description = pulumi.Input.asOptionalInput<String>(description),
      isDefault = pulumi.Input.asOptionalInput<bool>(isDefault),
      name = pulumi.Input.asOptionalInput<String>(name),
      serviceDataIdentity = pulumi.Input.asOptionalInput<String>(serviceDataIdentity),
      storageContainerId = pulumi.Input.asOptionalInput<String>(storageContainerId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorityUrl': ?authorityUrl,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'description': ?description,
      'isDefault': ?isDefault,
      'name': ?name,
      'serviceDataIdentity': ?serviceDataIdentity,
      'storageContainerId': ?storageContainerId,
      'tags': ?tags,
      'tenantId': ?tenantId,
      'workspaceId': ?workspaceId,
    };
  }

  factory DatastoreDatalakeGen2State.fromMap(Map<String, dynamic> map) {
    return DatastoreDatalakeGen2State(
      authorityUrl: map['authorityUrl'] == null ? null : pulumi.Output.create<String>(map['authorityUrl'] as String),
      clientId: map['clientId'] == null ? null : pulumi.Output.create<String>(map['clientId'] as String),
      clientSecret: map['clientSecret'] == null ? null : pulumi.Output.create<String>(map['clientSecret'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      isDefault: map['isDefault'] == null ? null : pulumi.Output.create<bool>(map['isDefault'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      serviceDataIdentity: map['serviceDataIdentity'] == null ? null : pulumi.Output.create<String>(map['serviceDataIdentity'] as String),
      storageContainerId: map['storageContainerId'] == null ? null : pulumi.Output.create<String>(map['storageContainerId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

