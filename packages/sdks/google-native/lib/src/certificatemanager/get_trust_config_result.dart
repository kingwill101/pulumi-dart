// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_store_response.dart';

/// Result data returned by getTrustConfig.
class GetTrustConfigResult {
  /// The creation timestamp of a TrustConfig.
  final String? createTime;
  /// One or more paragraphs of text description of a TrustConfig.
  final String? description;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String? etag;
  /// Set of labels associated with a TrustConfig.
  final Map<String, String>? labels;
  /// A user-defined name of the trust config. TrustConfig names must be unique globally and match pattern `projects/*/locations/*/trustConfigs/*`.
  final String? name;
  /// Set of trust stores to perform validation against. This field is supported when TrustConfig is configured with Load Balancers, currently not supported for SPIFFE certificate validation. Only one TrustStore specified is currently allowed.
  final List<TrustStoreResponse>? trustStores;
  /// The last update timestamp of a TrustConfig.
  final String? updateTime;

  /// Creates a new [GetTrustConfigResult].
  /// [createTime] The creation timestamp of a TrustConfig.
  /// [description] One or more paragraphs of text description of a TrustConfig.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] Set of labels associated with a TrustConfig.
  /// [name] A user-defined name of the trust config. TrustConfig names must be unique globally and match pattern `projects/*/locations/*/trustConfigs/*`.
  /// [trustStores] Set of trust stores to perform validation against. This field is supported when TrustConfig is configured with Load Balancers, currently not supported for SPIFFE certificate validation. Only one TrustStore specified is currently allowed.
  /// [updateTime] The last update timestamp of a TrustConfig.
  const GetTrustConfigResult({
    this.createTime,
    this.description,
    this.etag,
    this.labels,
    this.name,
    this.trustStores,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'etag': ?etag,
      'labels': ?labels,
      'name': ?name,
      'trustStores': ?(() { final guardedValue = trustStores; if (guardedValue == null) return null; return pulumi.Input.encodeList<TrustStoreResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'updateTime': ?updateTime,
    };
  }

  factory GetTrustConfigResult.fromMap(Map<String, dynamic> map) {
    return GetTrustConfigResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trustStores: (() { final guardedValue = map['trustStores']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TrustStoreResponse>(guardedValue, (value) => TrustStoreResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
