// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_salesforce_data_cloud_cross_cloud_cache_options.dart';

class ConnectionSalesforceDataCloud {
  /// Configuration options for cross-cloud caching of data and metadata files.
  /// Structure is documented below.
  final pulumi.Input<ConnectionSalesforceDataCloudCrossCloudCacheOptions> crossCloudCacheOptions;
  /// (Output)
  /// A unique Google-owned and Google-generated service account identity for the connection.
  final pulumi.Input<String?>? identity;
  /// The URL to the user's Salesforce Data Cloud instance.
  final pulumi.Input<String> instanceUri;
  /// The ID of the user's Salesforce tenant.
  final pulumi.Input<String> tenantId;

  /// Creates a new [ConnectionSalesforceDataCloud].
  /// [crossCloudCacheOptions] Configuration options for cross-cloud caching of data and metadata files.
  /// [identity] (Output)
  /// [instanceUri] The URL to the user's Salesforce Data Cloud instance.
  /// [tenantId] The ID of the user's Salesforce tenant.
  const ConnectionSalesforceDataCloud({
    required this.crossCloudCacheOptions,
    this.identity,
    required this.instanceUri,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossCloudCacheOptions': pulumi.Input.mapInputValue<ConnectionSalesforceDataCloudCrossCloudCacheOptions, Map<String, dynamic>>(crossCloudCacheOptions, (value) => value.toMap()),
      'identity': ?identity,
      'instanceUri': instanceUri,
      'tenantId': tenantId,
    };
  }

  factory ConnectionSalesforceDataCloud.fromMap(Map<String, dynamic> map) {
    return ConnectionSalesforceDataCloud(
      crossCloudCacheOptions: pulumi.Input.fromValue(ConnectionSalesforceDataCloudCrossCloudCacheOptions.fromMap((map['crossCloudCacheOptions']! as Map).cast<String, dynamic>())),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceUri: pulumi.Input.fromValue(map['instanceUri'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
