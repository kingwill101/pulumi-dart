// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_product_access_approval_config.dart';
import 'data_product_access_group.dart';

/// {@template pulumi_dataplex_data_product_data_product_args_doc}
/// The set of arguments for DataProduct.
/// {@endtemplate}
/// {@macro pulumi_dataplex_data_product_data_product_args_doc}
class DataProductArgs {
  /// Configuration for access approval for the data product.
  /// Structure is documented below.
  final pulumi.Input<DataProductAccessApprovalConfig?>? accessApprovalConfig;
  /// Custom user defined access groups at the data product level.
  /// Structure is documented below.
  final pulumi.Input<List<DataProductAccessGroup>?>? accessGroups;
  /// The ID of the data product.
  final pulumi.Input<String> dataProductId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Description of the data product.
  final pulumi.Input<String?>? description;
  /// User-friendly display name.
  final pulumi.Input<String> displayName;
  /// Base64 encoded image representing the data product. Max Size: 3.0MiB
  /// Expected image dimensions are 512x512 pixels, however the API only
  /// performs validation on size of the encoded data.
  /// Note: For byte fields, the content of the fields are base64-encoded (which
  /// increases the size of the data by 33-36%) when using JSON on the wire.
  final pulumi.Input<String?>? icon;
  /// User-defined labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location for the data product.
  final pulumi.Input<String> location;
  /// Emails of the owners.
  final pulumi.Input<List<String>> ownerEmails;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [DataProductArgs].
  /// [accessApprovalConfig] Configuration for access approval for the data product.
  /// [accessGroups] Custom user defined access groups at the data product level.
  /// [dataProductId] The ID of the data product.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the data product.
  /// [displayName] User-friendly display name.
  /// [icon] Base64 encoded image representing the data product. Max Size: 3.0MiB
  /// [labels] User-defined labels.
  /// [location] The location for the data product.
  /// [ownerEmails] Emails of the owners.
  /// [project] The ID of the project in which the resource belongs.
  const DataProductArgs({
    this.accessApprovalConfig,
    this.accessGroups,
    required this.dataProductId,
    this.deletionPolicy,
    this.description,
    required this.displayName,
    this.icon,
    this.labels,
    required this.location,
    required this.ownerEmails,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessApprovalConfig': ?pulumi.Input.mapOptionalInputValue<DataProductAccessApprovalConfig, Map<String, dynamic>>(accessApprovalConfig, (value) => value.toMap()),
      'accessGroups': ?pulumi.Input.mapOptionalInputValue<List<DataProductAccessGroup>, List<Map<String, dynamic>>>(accessGroups, (value) => pulumi.Input.encodeList<DataProductAccessGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataProductId': dataProductId,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': displayName,
      'icon': ?icon,
      'labels': ?labels,
      'location': location,
      'ownerEmails': ownerEmails,
      'project': ?project,
    };
  }

  factory DataProductArgs.fromMap(Map<String, dynamic> map) {
    return DataProductArgs(
      accessApprovalConfig: (() { final guardedValue = map['accessApprovalConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataProductAccessApprovalConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      accessGroups: (() { final guardedValue = map['accessGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataProductAccessGroup>(guardedValue, (value) => DataProductAccessGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dataProductId: pulumi.Input.fromValue(map['dataProductId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      icon: (() { final guardedValue = map['icon']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      ownerEmails: pulumi.Input.fromValue((map['ownerEmails'] as List).cast<String>()),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
