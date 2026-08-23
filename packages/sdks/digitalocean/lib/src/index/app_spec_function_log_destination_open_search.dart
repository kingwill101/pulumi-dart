// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_function_log_destination_open_search_basic_auth.dart';

class AppSpecFunctionLogDestinationOpenSearch {
  /// Basic authentication details.
  final pulumi.Input<AppSpecFunctionLogDestinationOpenSearchBasicAuth> basicAuth;
  /// The name of the underlying DigitalOcean DBaaS cluster. This is required for production databases. For dev databases, if `clusterName` is not set, a new cluster will be provisioned.
  final pulumi.Input<String>? clusterName;
  /// OpenSearch endpoint.
  final pulumi.Input<String>? endpoint;
  /// OpenSearch index name.
  final pulumi.Input<String>? indexName;

  /// Creates a new [AppSpecFunctionLogDestinationOpenSearch].
  /// [basicAuth] Basic authentication details.
  /// [clusterName] The name of the underlying DigitalOcean DBaaS cluster. This is required for production databases. For dev databases, if `clusterName` is not set, a new cluster will be provisioned.
  /// [endpoint] OpenSearch endpoint.
  /// [indexName] OpenSearch index name.
  const AppSpecFunctionLogDestinationOpenSearch({
    required this.basicAuth,
    this.clusterName,
    this.endpoint,
    this.indexName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAuth': pulumi.Input.mapInputValue<AppSpecFunctionLogDestinationOpenSearchBasicAuth, Map<String, dynamic>>(basicAuth, (value) => value.toMap()),
      'clusterName': ?clusterName,
      'endpoint': ?endpoint,
      'indexName': ?indexName,
    };
  }

  factory AppSpecFunctionLogDestinationOpenSearch.fromMap(Map<String, dynamic> map) {
    return AppSpecFunctionLogDestinationOpenSearch(
      basicAuth: pulumi.Input.fromValue(AppSpecFunctionLogDestinationOpenSearchBasicAuth.fromMap((map['basicAuth']! as Map).cast<String, dynamic>())),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      indexName: (() { final guardedValue = map['indexName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
