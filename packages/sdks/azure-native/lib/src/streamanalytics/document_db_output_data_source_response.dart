// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a DocumentDB output data source.
class DocumentDbOutputDataSourceResponse {
  /// The DocumentDB account name or ID. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? accountId;
  /// The account key for the DocumentDB account. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? accountKey;
  /// The collection name pattern for the collections to be used. The collection name format can be constructed using the optional {partition} token, where partitions start from 0. See the DocumentDB section of https://docs.microsoft.com/en-us/rest/api/streamanalytics/stream-analytics-output for more information. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? collectionNamePattern;
  /// The name of the DocumentDB database. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? database;
  /// The name of the field in output events used to specify the primary key which insert or update operations are based on.
  final pulumi.Input<String>? documentId;
  /// The name of the field in output events used to specify the key for partitioning output across collections. If 'collectionNamePattern' contains the {partition} token, this property is required to be specified.
  final pulumi.Input<String>? partitionKey;
  /// Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Microsoft.Storage/DocumentDB'.
  final pulumi.Input<String> type;

  /// Creates a new [DocumentDbOutputDataSourceResponse].
  /// [accountId] The DocumentDB account name or ID. Required on PUT (CreateOrReplace) requests.
  /// [accountKey] The account key for the DocumentDB account. Required on PUT (CreateOrReplace) requests.
  /// [collectionNamePattern] The collection name pattern for the collections to be used. The collection name format can be constructed using the optional {partition} token, where partitions start from 0. See the DocumentDB section of https://docs.microsoft.com/en-us/rest/api/streamanalytics/stream-analytics-output for more information. Required on PUT (CreateOrReplace) requests.
  /// [database] The name of the DocumentDB database. Required on PUT (CreateOrReplace) requests.
  /// [documentId] The name of the field in output events used to specify the primary key which insert or update operations are based on.
  /// [partitionKey] The name of the field in output events used to specify the key for partitioning output across collections. If 'collectionNamePattern' contains the {partition} token, this property is required to be specified.
  /// [type] Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  DocumentDbOutputDataSourceResponse({
    this.accountId,
    this.accountKey,
    this.collectionNamePattern,
    this.database,
    this.documentId,
    this.partitionKey,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'accountKey': ?accountKey,
      'collectionNamePattern': ?collectionNamePattern,
      'database': ?database,
      'documentId': ?documentId,
      'partitionKey': ?partitionKey,
      'type': type,
    };
  }

  factory DocumentDbOutputDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return DocumentDbOutputDataSourceResponse(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      accountKey: map['accountKey'] == null ? null : (map['accountKey'] as String).input(),
      collectionNamePattern: map['collectionNamePattern'] == null ? null : (map['collectionNamePattern'] as String).input(),
      database: map['database'] == null ? null : (map['database'] as String).input(),
      documentId: map['documentId'] == null ? null : (map['documentId'] as String).input(),
      partitionKey: map['partitionKey'] == null ? null : (map['partitionKey'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

