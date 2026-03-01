// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_enterprise_cluster_enterprise_cluster_args_doc}
/// The set of arguments for EnterpriseCluster.
/// {@endtemplate}
/// {@macro pulumi_redis_enterprise_cluster_enterprise_cluster_args_doc}
class EnterpriseClusterArgs {
  /// The Azure Region where the Redis Enterprise Cluster should exist. Changing this forces a new Redis Enterprise Cluster to be created.
  final pulumi.Input<String>? location;
  /// The minimum TLS version. Possible values are `1.0`, `1.1` and `1.2`. Defaults to `1.2`. Changing this forces a new Redis Enterprise Cluster to be created.
  ///
  /// > **Note:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more.
  final pulumi.Input<String>? minimumTlsVersion;
  /// The name which should be used for this Redis Enterprise Cluster. Changing this forces a new Redis Enterprise Cluster to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Redis Enterprise Cluster should exist. Changing this forces a new Redis Enterprise Cluster to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The `sku_name` is comprised of two segments separated by a hyphen (e.g. `Enterprise_E10-2`). The first segment of the `sku_name` defines the `name` of the SKU, possible values are `Enterprise_E5`, `Enterprise_E10`, `Enterprise_E20`, `Enterprise_E50`, `Enterprise_E100`, `Enterprise_E200`, `Enterprise_E400`, `EnterpriseFlash_F300`, `EnterpriseFlash_F700` or `EnterpriseFlash_F1500`. The second segment defines the `capacity` of the `sku_name`, possible values for `Enteprise` SKUs are (`2`, `4`, `6`, ...). Possible values for `EnterpriseFlash` SKUs are (`3`, `9`, `15`, ...). Changing this forces a new Redis Enterprise Cluster to be created.
  final pulumi.Input<String> skuName;
  /// A mapping of tags which should be assigned to the Redis Enterprise Cluster.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies a list of Availability Zones in which this Redis Enterprise Cluster should be located. Changing this forces a new Redis Enterprise Cluster to be created.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [EnterpriseClusterArgs].
  /// [location] The Azure Region where the Redis Enterprise Cluster should exist. Changing this forces a new Redis Enterprise Cluster to be created.
  /// [minimumTlsVersion] The minimum TLS version. Possible values are `1.0`, `1.1` and `1.2`. Defaults to `1.2`. Changing this forces a new Redis Enterprise Cluster to be created.
  /// [name] The name which should be used for this Redis Enterprise Cluster. Changing this forces a new Redis Enterprise Cluster to be created.
  /// [resourceGroupName] The name of the Resource Group where the Redis Enterprise Cluster should exist. Changing this forces a new Redis Enterprise Cluster to be created.
  /// [skuName] The `sku_name` is comprised of two segments separated by a hyphen (e.g. `Enterprise_E10-2`). The first segment of the `sku_name` defines the `name` of the SKU, possible values are `Enterprise_E5`, `Enterprise_E10`, `Enterprise_E20`, `Enterprise_E50`, `Enterprise_E100`, `Enterprise_E200`, `Enterprise_E400`, `EnterpriseFlash_F300`, `EnterpriseFlash_F700` or `EnterpriseFlash_F1500`. The second segment defines the `capacity` of the `sku_name`, possible values for `Enteprise` SKUs are (`2`, `4`, `6`, ...). Possible values for `EnterpriseFlash` SKUs are (`3`, `9`, `15`, ...). Changing this forces a new Redis Enterprise Cluster to be created.
  /// [tags] A mapping of tags which should be assigned to the Redis Enterprise Cluster.
  /// [zones] Specifies a list of Availability Zones in which this Redis Enterprise Cluster should be located. Changing this forces a new Redis Enterprise Cluster to be created.
  EnterpriseClusterArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? minimumTlsVersion,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> skuName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? zones,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      minimumTlsVersion = pulumi.Input.asOptionalInput<String>(minimumTlsVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skuName = pulumi.Input.asInput<String>(skuName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'minimumTlsVersion': ?minimumTlsVersion,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory EnterpriseClusterArgs.fromMap(Map<String, dynamic> map) {
    return EnterpriseClusterArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      minimumTlsVersion: map['minimumTlsVersion'] == null ? null : pulumi.Output.create<String>(map['minimumTlsVersion'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skuName: pulumi.Output.create<String>(map['skuName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

