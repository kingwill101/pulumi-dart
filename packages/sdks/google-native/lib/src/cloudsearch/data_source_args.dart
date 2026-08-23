// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gsuite_principal.dart';

/// {@template pulumi_cloudsearch_v1_data_source_args_doc}
/// The set of arguments for DataSource.
/// {@endtemplate}
/// {@macro pulumi_cloudsearch_v1_data_source_args_doc}
class DataSourceArgs {
  /// If true, sets the datasource to read-only mode. In read-only mode, the Indexing API rejects any requests to index or delete items in this source. Enabling read-only mode does not stop the processing of previously accepted data.
  final pulumi.Input<bool>? disableModifications;
  /// Disable serving any search or assist results.
  final pulumi.Input<bool>? disableServing;
  /// Display name of the datasource The maximum length is 300 characters.
  final pulumi.Input<String> displayName;
  /// List of service accounts that have indexing access.
  final pulumi.Input<List<String>>? indexingServiceAccounts;
  /// This field restricts visibility to items at the datasource level. Items within the datasource are restricted to the union of users and groups included in this field. Note that, this does not ensure access to a specific item, as users need to have ACL permissions on the contained items. This ensures a high level access on the entire datasource, and that the individual items are not shared outside this visibility.
  final pulumi.Input<List<GSuitePrincipal>>? itemsVisibility;
  /// The name of the datasource resource. Format: datasources/{source_id}. The name is ignored when creating a datasource.
  final pulumi.Input<String>? name;
  /// IDs of the Long Running Operations (LROs) currently running for this schema.
  final pulumi.Input<List<String>>? operationIds;
  /// Can a user request to get thumbnail URI for Items indexed in this data source.
  final pulumi.Input<bool>? returnThumbnailUrls;
  /// A short name or alias for the source. This value will be used to match the 'source' operator. For example, if the short name is *&lt;value&gt;* then queries like *source:&lt;value&gt;* will only return results for this source. The value must be unique across all datasources. The value must only contain alphanumeric characters (a-zA-Z0-9). The value cannot start with 'google' and cannot be one of the following: mail, gmail, docs, drive, groups, sites, calendar, hangouts, gplus, keep, people, teams. Its maximum length is 32 characters.
  final pulumi.Input<String>? shortName;

  /// Creates a new [DataSourceArgs].
  /// [disableModifications] If true, sets the datasource to read-only mode. In read-only mode, the Indexing API rejects any requests to index or delete items in this source. Enabling read-only mode does not stop the processing of previously accepted data.
  /// [disableServing] Disable serving any search or assist results.
  /// [displayName] Display name of the datasource The maximum length is 300 characters.
  /// [indexingServiceAccounts] List of service accounts that have indexing access.
  /// [itemsVisibility] This field restricts visibility to items at the datasource level. Items within the datasource are restricted to the union of users and groups included in this field. Note that, this does not ensure access to a specific item, as users need to have ACL permissions on the contained items. This ensures a high level access on the entire datasource, and that the individual items are not shared outside this visibility.
  /// [name] The name of the datasource resource. Format: datasources/{source_id}. The name is ignored when creating a datasource.
  /// [operationIds] IDs of the Long Running Operations (LROs) currently running for this schema.
  /// [returnThumbnailUrls] Can a user request to get thumbnail URI for Items indexed in this data source.
  /// [shortName] A short name or alias for the source. This value will be used to match the 'source' operator. For example, if the short name is *&lt;value&gt;* then queries like *source:&lt;value&gt;* will only return results for this source. The value must be unique across all datasources. The value must only contain alphanumeric characters (a-zA-Z0-9). The value cannot start with 'google' and cannot be one of the following: mail, gmail, docs, drive, groups, sites, calendar, hangouts, gplus, keep, people, teams. Its maximum length is 32 characters.
  const DataSourceArgs({
    this.disableModifications,
    this.disableServing,
    required this.displayName,
    this.indexingServiceAccounts,
    this.itemsVisibility,
    this.name,
    this.operationIds,
    this.returnThumbnailUrls,
    this.shortName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableModifications': ?disableModifications,
      'disableServing': ?disableServing,
      'displayName': displayName,
      'indexingServiceAccounts': ?indexingServiceAccounts,
      'itemsVisibility': ?pulumi.Input.mapOptionalInputValue<List<GSuitePrincipal>, List<Map<String, dynamic>>>(itemsVisibility, (value) => pulumi.Input.encodeList<GSuitePrincipal, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'operationIds': ?operationIds,
      'returnThumbnailUrls': ?returnThumbnailUrls,
      'shortName': ?shortName,
    };
  }

  factory DataSourceArgs.fromMap(Map<String, dynamic> map) {
    return DataSourceArgs(
      disableModifications: (() { final guardedValue = map['disableModifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableServing: (() { final guardedValue = map['disableServing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      indexingServiceAccounts: (() { final guardedValue = map['indexingServiceAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      itemsVisibility: (() { final guardedValue = map['itemsVisibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GSuitePrincipal>(guardedValue, (value) => GSuitePrincipal.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationIds: (() { final guardedValue = map['operationIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      returnThumbnailUrls: (() { final guardedValue = map['returnThumbnailUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      shortName: (() { final guardedValue = map['shortName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
