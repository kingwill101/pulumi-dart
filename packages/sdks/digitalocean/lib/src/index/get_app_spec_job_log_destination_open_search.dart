// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_job_log_destination_open_search_basic_auth.dart';

class GetAppSpecJobLogDestinationOpenSearch {
  /// OpenSearch basic auth
  final pulumi.Input<GetAppSpecJobLogDestinationOpenSearchBasicAuth> basicAuth;
  /// The name of the underlying DigitalOcean DBaaS cluster. This is required for production databases. For dev databases, if `cluster_name` is not set, a new cluster will be provisioned.
  final pulumi.Input<String>? clusterName;
  /// OpenSearch API Endpoint. Only HTTPS is supported. Format: https://<host>:<port>.
  final pulumi.Input<String>? endpoint;
  /// The index name to use for the logs. If not set, the default index name is `logs`.
  final pulumi.Input<String>? indexName;

  /// Creates a new [GetAppSpecJobLogDestinationOpenSearch].
  /// [basicAuth] OpenSearch basic auth
  /// [clusterName] The name of the underlying DigitalOcean DBaaS cluster. This is required for production databases. For dev databases, if `cluster_name` is not set, a new cluster will be provisioned.
  /// [endpoint] OpenSearch API Endpoint. Only HTTPS is supported. Format: https://<host>:<port>.
  /// [indexName] The index name to use for the logs. If not set, the default index name is `logs`.
  GetAppSpecJobLogDestinationOpenSearch({
    required this.basicAuth,
    this.clusterName,
    this.endpoint,
    this.indexName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAuth': pulumi.Input.mapInputValue<GetAppSpecJobLogDestinationOpenSearchBasicAuth, Map<String, dynamic>>(basicAuth, (value) => value.toMap()),
      'clusterName': ?clusterName,
      'endpoint': ?endpoint,
      'indexName': ?indexName,
    };
  }

  factory GetAppSpecJobLogDestinationOpenSearch.fromMap(Map<String, dynamic> map) {
    return GetAppSpecJobLogDestinationOpenSearch(
      basicAuth: (GetAppSpecJobLogDestinationOpenSearchBasicAuth.fromMap((map['basicAuth'] as Map).cast<String, dynamic>())).input(),
      clusterName: map['clusterName'] == null ? null : (map['clusterName'] as String).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      indexName: map['indexName'] == null ? null : (map['indexName'] as String).input(),
    );
  }
}

