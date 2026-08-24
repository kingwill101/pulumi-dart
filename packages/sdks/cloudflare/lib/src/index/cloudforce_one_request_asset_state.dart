// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CloudforceOneRequestAsset resources.
class CloudforceOneRequestAssetState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Defines the asset creation time.
  final pulumi.Input<String?>? created;
  /// Asset description.
  final pulumi.Input<String?>? description;
  /// Asset file type.
  final pulumi.Input<String?>? fileType;
  /// Asset name.
  final pulumi.Input<String?>? name;
  /// Page number of results.
  final pulumi.Input<int?>? page;
  /// Number of results per page.
  final pulumi.Input<int?>? perPage;
  /// UUID.
  final pulumi.Input<String?>? requestId;
  /// Asset file to upload.
  final pulumi.Input<String?>? source;

  /// Creates a new [CloudforceOneRequestAssetState].
  /// [accountId] Identifier.
  /// [created] Defines the asset creation time.
  /// [description] Asset description.
  /// [fileType] Asset file type.
  /// [name] Asset name.
  /// [page] Page number of results.
  /// [perPage] Number of results per page.
  /// [requestId] UUID.
  /// [source] Asset file to upload.
  const CloudforceOneRequestAssetState({
    this.accountId,
    this.created,
    this.description,
    this.fileType,
    this.name,
    this.page,
    this.perPage,
    this.requestId,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'created': ?created,
      'description': ?description,
      'fileType': ?fileType,
      'name': ?name,
      'page': ?page,
      'perPage': ?perPage,
      'requestId': ?requestId,
      'source': ?source,
    };
  }

  factory CloudforceOneRequestAssetState.fromMap(Map<String, dynamic> map) {
    return CloudforceOneRequestAssetState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileType: (() { final guardedValue = map['fileType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      page: (() { final guardedValue = map['page']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      perPage: (() { final guardedValue = map['perPage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
