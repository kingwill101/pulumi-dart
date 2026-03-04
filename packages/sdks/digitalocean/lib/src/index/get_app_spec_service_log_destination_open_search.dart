// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_service_log_destination_open_search_basic_auth.dart';

class GetAppSpecServiceLogDestinationOpenSearch {
  /// OpenSearch basic auth
  final pulumi.Input<GetAppSpecServiceLogDestinationOpenSearchBasicAuth>
  basicAuth;

  /// The name of the underlying DigitalOcean DBaaS cluster. This is required for production databases. For dev databases, if `cluster_name` is not set, a new cluster will be provisioned.
  final pulumi.Input<String>? clusterName;

  /// OpenSearch API Endpoint. Only HTTPS is supported. Format: https://&lt;host&gt;:&lt;port&gt;.
  final pulumi.Input<String>? endpoint;

  /// The index name to use for the logs. If not set, the default index name is `logs`.
  final pulumi.Input<String>? indexName;

  /// Creates a new [GetAppSpecServiceLogDestinationOpenSearch].
  /// [basicAuth] OpenSearch basic auth
  /// [clusterName] The name of the underlying DigitalOcean DBaaS cluster. This is required for production databases. For dev databases, if `cluster_name` is not set, a new cluster will be provisioned.
  /// [endpoint] OpenSearch API Endpoint. Only HTTPS is supported. Format: https://&lt;host&gt;:&lt;port&gt;.
  /// [indexName] The index name to use for the logs. If not set, the default index name is `logs`.
  GetAppSpecServiceLogDestinationOpenSearch({
    required this.basicAuth,
    this.clusterName,
    this.endpoint,
    this.indexName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAuth':
          pulumi.Input.mapInputValue<
            GetAppSpecServiceLogDestinationOpenSearchBasicAuth,
            Map<String, dynamic>
          >(basicAuth, (value) => value.toMap()),
      'clusterName': ?clusterName,
      'endpoint': ?endpoint,
      'indexName': ?indexName,
    };
  }

  factory GetAppSpecServiceLogDestinationOpenSearch.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAppSpecServiceLogDestinationOpenSearch(
      basicAuth: pulumi.Input.fromValue(
        GetAppSpecServiceLogDestinationOpenSearchBasicAuth.fromMap(
          (map['basicAuth']! as Map).cast<String, dynamic>(),
        ),
      ),
      clusterName: (() {
        final guardedValue = map['clusterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpoint: (() {
        final guardedValue = map['endpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      indexName: (() {
        final guardedValue = map['indexName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
