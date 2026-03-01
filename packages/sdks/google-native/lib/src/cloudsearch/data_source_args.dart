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
  /// A short name or alias for the source. This value will be used to match the 'source' operator. For example, if the short name is *<value>* then queries like *source:<value>* will only return results for this source. The value must be unique across all datasources. The value must only contain alphanumeric characters (a-zA-Z0-9). The value cannot start with 'google' and cannot be one of the following: mail, gmail, docs, drive, groups, sites, calendar, hangouts, gplus, keep, people, teams. Its maximum length is 32 characters.
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
  /// [shortName] A short name or alias for the source. This value will be used to match the 'source' operator. For example, if the short name is *<value>* then queries like *source:<value>* will only return results for this source. The value must be unique across all datasources. The value must only contain alphanumeric characters (a-zA-Z0-9). The value cannot start with 'google' and cannot be one of the following: mail, gmail, docs, drive, groups, sites, calendar, hangouts, gplus, keep, people, teams. Its maximum length is 32 characters.
  DataSourceArgs({
    pulumi.Output<bool>? disableModifications,
    pulumi.Output<bool>? disableServing,
    required pulumi.Output<String> displayName,
    pulumi.Output<List<String>>? indexingServiceAccounts,
    pulumi.Output<List<GSuitePrincipal>>? itemsVisibility,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? operationIds,
    pulumi.Output<bool>? returnThumbnailUrls,
    pulumi.Output<String>? shortName,
  }) :
      disableModifications = pulumi.Input.asOptionalInput<bool>(disableModifications),
      disableServing = pulumi.Input.asOptionalInput<bool>(disableServing),
      displayName = pulumi.Input.asInput<String>(displayName),
      indexingServiceAccounts = pulumi.Input.asOptionalInput<List<String>>(indexingServiceAccounts),
      itemsVisibility = pulumi.Input.asOptionalInput<List<GSuitePrincipal>>(itemsVisibility),
      name = pulumi.Input.asOptionalInput<String>(name),
      operationIds = pulumi.Input.asOptionalInput<List<String>>(operationIds),
      returnThumbnailUrls = pulumi.Input.asOptionalInput<bool>(returnThumbnailUrls),
      shortName = pulumi.Input.asOptionalInput<String>(shortName);

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
      disableModifications: map['disableModifications'] == null ? null : pulumi.Output.create<bool>(map['disableModifications'] as bool),
      disableServing: map['disableServing'] == null ? null : pulumi.Output.create<bool>(map['disableServing'] as bool),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      indexingServiceAccounts: map['indexingServiceAccounts'] == null ? null : pulumi.Output.create<List<String>>((map['indexingServiceAccounts'] as List).cast<String>()),
      itemsVisibility: map['itemsVisibility'] == null ? null : pulumi.Output.create<List<GSuitePrincipal>>(pulumi.Input.decodeList<GSuitePrincipal>(map['itemsVisibility'], (value) => GSuitePrincipal.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      operationIds: map['operationIds'] == null ? null : pulumi.Output.create<List<String>>((map['operationIds'] as List).cast<String>()),
      returnThumbnailUrls: map['returnThumbnailUrls'] == null ? null : pulumi.Output.create<bool>(map['returnThumbnailUrls'] as bool),
      shortName: map['shortName'] == null ? null : pulumi.Output.create<String>(map['shortName'] as String),
    );
  }
}

