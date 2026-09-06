// ignore_for_file: unused_element, unnecessary_cast

import 'client_info_response.dart';
import 'system_data_response.dart';

/// Result data returned by getIncidentComment.
class GetIncidentCommentResult {
  /// Describes the client that created the comment
  final ClientInfoResponse? author;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The time the comment was created
  final String? createdTimeUtc;
  /// Etag of the azure resource
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The time the comment was updated
  final String? lastModifiedTimeUtc;
  /// The comment message
  final String? message;
  /// The name of the resource
  final String? name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetIncidentCommentResult].
  /// [author] Describes the client that created the comment
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdTimeUtc] The time the comment was created
  /// [etag] Etag of the azure resource
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [lastModifiedTimeUtc] The time the comment was updated
  /// [message] The comment message
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetIncidentCommentResult({
    this.author,
    this.azureApiVersion,
    this.createdTimeUtc,
    this.etag,
    this.id,
    this.lastModifiedTimeUtc,
    this.message,
    this.name,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author': ?author?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'createdTimeUtc': ?createdTimeUtc,
      'etag': ?etag,
      'id': ?id,
      'lastModifiedTimeUtc': ?lastModifiedTimeUtc,
      'message': ?message,
      'name': ?name,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetIncidentCommentResult.fromMap(Map<String, dynamic> map) {
    return GetIncidentCommentResult(
      author: (() { final guardedValue = map['author']; if (guardedValue == null) return null; return ClientInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdTimeUtc: (() { final guardedValue = map['createdTimeUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedTimeUtc: (() { final guardedValue = map['lastModifiedTimeUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
