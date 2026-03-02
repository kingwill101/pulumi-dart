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
    this.authorityUrl,
    this.clientId,
    this.clientSecret,
    this.description,
    this.isDefault,
    this.name,
    this.serviceDataIdentity,
    this.storageContainerId,
    this.tags,
    this.tenantId,
    this.workspaceId,
  });

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
      authorityUrl: map['authorityUrl'] == null ? null : (map['authorityUrl'] as String).input(),
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      isDefault: map['isDefault'] == null ? null : (map['isDefault'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      serviceDataIdentity: map['serviceDataIdentity'] == null ? null : (map['serviceDataIdentity'] as String).input(),
      storageContainerId: map['storageContainerId'] == null ? null : (map['storageContainerId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
      workspaceId: map['workspaceId'] == null ? null : (map['workspaceId'] as String).input(),
    );
  }
}

