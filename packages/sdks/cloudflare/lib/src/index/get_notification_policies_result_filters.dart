// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNotificationPoliciesResultFilters {
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>> actions;
  /// Used for configuring radar_notification
  final pulumi.Input<List<String>> affectedAsns;
  /// Used for configuring incident_alert
  final pulumi.Input<List<String>> affectedComponents;
  /// Used for configuring radar_notification
  final pulumi.Input<List<String>> affectedLocations;
  /// Used for configuring maintenance*event*notification
  final pulumi.Input<List<String>> airportCodes;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>> alertTriggerPreferences;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>> alertTriggerPreferencesValues;
  /// Used for configuring load*balancing*pool*enablement*alert
  final pulumi.Input<List<String>> enableds;
  /// Used for configuring pages*event*alert
  final pulumi.Input<List<String>> environments;
  /// Used for configuring load*balancing*health_alert
  final pulumi.Input<List<String>> eventSources;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>> eventTypes;
  /// Used for configuring pages*event*alert
  final pulumi.Input<List<String>> events;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>> groupBies;
  /// Used for configuring health*check*status_notification
  final pulumi.Input<List<String>> healthCheckIds;
  /// Used for configuring incident_alert
  final pulumi.Input<List<String>> incidentImpacts;
  /// Used for configuring stream*live*notifications
  final pulumi.Input<List<String>> inputIds;
  /// Used for configuring security*insights*alert
  final pulumi.Input<List<String>> insightClasses;
  /// Used for configuring billing*usage*alert
  final pulumi.Input<List<String>> limits;
  /// Used for configuring logo*match*alert
  final pulumi.Input<List<String>> logoTags;
  /// Used for configuring advanced*ddos*attack*l4*alert
  final pulumi.Input<List<String>> megabitsPerSeconds;
  /// Used for configuring load*balancing*health_alert
  final pulumi.Input<List<String>> newHealths;
  /// Used for configuring tunnel*health*event
  final pulumi.Input<List<String>> newStatuses;
  /// Used for configuring advanced*ddos*attack*l4*alert
  final pulumi.Input<List<String>> packetsPerSeconds;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>> poolIds;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>> popNames;
  /// Used for configuring billing*usage*alert
  final pulumi.Input<List<String>> products;
  /// Used for configuring pages*event*alert
  final pulumi.Input<List<String>> projectIds;
  /// Used for configuring advanced*ddos*attack*l4*alert
  final pulumi.Input<List<String>> protocols;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>> queryTags;
  /// Used for configuring advanced*ddos*attack*l7*alert
  final pulumi.Input<List<String>> requestsPerSeconds;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>> selectors;
  /// Used for configuring clickhouse*alert*fw*ent*anomaly
  final pulumi.Input<List<String>> services;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>> slos;
  /// Used for configuring health*check*status_notification
  final pulumi.Input<List<String>> statuses;
  /// Used for configuring advanced*ddos*attack*l7*alert
  final pulumi.Input<List<String>> targetHostnames;
  /// Used for configuring advanced*ddos*attack*l4*alert
  final pulumi.Input<List<String>> targetIps;
  /// Used for configuring advanced*ddos*attack*l7*alert
  final pulumi.Input<List<String>> targetZoneNames;
  /// Used for configuring traffic*anomalies*alert
  final pulumi.Input<List<String>> trafficExclusions;
  /// Used for configuring tunnel*health*event
  final pulumi.Input<List<String>> tunnelIds;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>> tunnelNames;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>> types;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>> wheres;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>> zones;

  /// Creates a new [GetNotificationPoliciesResultFilters].
  /// [actions] Usage depends on specific alert type
  /// [affectedAsns] Used for configuring radar_notification
  /// [affectedComponents] Used for configuring incident_alert
  /// [affectedLocations] Used for configuring radar_notification
  /// [airportCodes] Used for configuring maintenance*event*notification
  /// [alertTriggerPreferences] Usage depends on specific alert type
  /// [alertTriggerPreferencesValues] Usage depends on specific alert type
  /// [enableds] Used for configuring load*balancing*pool*enablement*alert
  /// [environments] Used for configuring pages*event*alert
  /// [eventSources] Used for configuring load*balancing*health_alert
  /// [eventTypes] Usage depends on specific alert type
  /// [events] Used for configuring pages*event*alert
  /// [groupBies] Usage depends on specific alert type
  /// [healthCheckIds] Used for configuring health*check*status_notification
  /// [incidentImpacts] Used for configuring incident_alert
  /// [inputIds] Used for configuring stream*live*notifications
  /// [insightClasses] Used for configuring security*insights*alert
  /// [limits] Used for configuring billing*usage*alert
  /// [logoTags] Used for configuring logo*match*alert
  /// [megabitsPerSeconds] Used for configuring advanced*ddos*attack*l4*alert
  /// [newHealths] Used for configuring load*balancing*health_alert
  /// [newStatuses] Used for configuring tunnel*health*event
  /// [packetsPerSeconds] Used for configuring advanced*ddos*attack*l4*alert
  /// [poolIds] Usage depends on specific alert type
  /// [popNames] Usage depends on specific alert type
  /// [products] Used for configuring billing*usage*alert
  /// [projectIds] Used for configuring pages*event*alert
  /// [protocols] Used for configuring advanced*ddos*attack*l4*alert
  /// [queryTags] Usage depends on specific alert type
  /// [requestsPerSeconds] Used for configuring advanced*ddos*attack*l7*alert
  /// [selectors] Usage depends on specific alert type
  /// [services] Used for configuring clickhouse*alert*fw*ent*anomaly
  /// [slos] Usage depends on specific alert type
  /// [statuses] Used for configuring health*check*status_notification
  /// [targetHostnames] Used for configuring advanced*ddos*attack*l7*alert
  /// [targetIps] Used for configuring advanced*ddos*attack*l4*alert
  /// [targetZoneNames] Used for configuring advanced*ddos*attack*l7*alert
  /// [trafficExclusions] Used for configuring traffic*anomalies*alert
  /// [tunnelIds] Used for configuring tunnel*health*event
  /// [tunnelNames] Usage depends on specific alert type
  /// [types] Usage depends on specific alert type
  /// [wheres] Usage depends on specific alert type
  /// [zones] Usage depends on specific alert type
  const GetNotificationPoliciesResultFilters({
    required this.actions,
    required this.affectedAsns,
    required this.affectedComponents,
    required this.affectedLocations,
    required this.airportCodes,
    required this.alertTriggerPreferences,
    required this.alertTriggerPreferencesValues,
    required this.enableds,
    required this.environments,
    required this.eventSources,
    required this.eventTypes,
    required this.events,
    required this.groupBies,
    required this.healthCheckIds,
    required this.incidentImpacts,
    required this.inputIds,
    required this.insightClasses,
    required this.limits,
    required this.logoTags,
    required this.megabitsPerSeconds,
    required this.newHealths,
    required this.newStatuses,
    required this.packetsPerSeconds,
    required this.poolIds,
    required this.popNames,
    required this.products,
    required this.projectIds,
    required this.protocols,
    required this.queryTags,
    required this.requestsPerSeconds,
    required this.selectors,
    required this.services,
    required this.slos,
    required this.statuses,
    required this.targetHostnames,
    required this.targetIps,
    required this.targetZoneNames,
    required this.trafficExclusions,
    required this.tunnelIds,
    required this.tunnelNames,
    required this.types,
    required this.wheres,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'affectedAsns': affectedAsns,
      'affectedComponents': affectedComponents,
      'affectedLocations': affectedLocations,
      'airportCodes': airportCodes,
      'alertTriggerPreferences': alertTriggerPreferences,
      'alertTriggerPreferencesValues': alertTriggerPreferencesValues,
      'enableds': enableds,
      'environments': environments,
      'eventSources': eventSources,
      'eventTypes': eventTypes,
      'events': events,
      'groupBies': groupBies,
      'healthCheckIds': healthCheckIds,
      'incidentImpacts': incidentImpacts,
      'inputIds': inputIds,
      'insightClasses': insightClasses,
      'limits': limits,
      'logoTags': logoTags,
      'megabitsPerSeconds': megabitsPerSeconds,
      'newHealths': newHealths,
      'newStatuses': newStatuses,
      'packetsPerSeconds': packetsPerSeconds,
      'poolIds': poolIds,
      'popNames': popNames,
      'products': products,
      'projectIds': projectIds,
      'protocols': protocols,
      'queryTags': queryTags,
      'requestsPerSeconds': requestsPerSeconds,
      'selectors': selectors,
      'services': services,
      'slos': slos,
      'statuses': statuses,
      'targetHostnames': targetHostnames,
      'targetIps': targetIps,
      'targetZoneNames': targetZoneNames,
      'trafficExclusions': trafficExclusions,
      'tunnelIds': tunnelIds,
      'tunnelNames': tunnelNames,
      'types': types,
      'wheres': wheres,
      'zones': zones,
    };
  }

  factory GetNotificationPoliciesResultFilters.fromMap(Map<String, dynamic> map) {
    return GetNotificationPoliciesResultFilters(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<String>()),
      affectedAsns: pulumi.Input.fromValue((map['affectedAsns'] as List).cast<String>()),
      affectedComponents: pulumi.Input.fromValue((map['affectedComponents'] as List).cast<String>()),
      affectedLocations: pulumi.Input.fromValue((map['affectedLocations'] as List).cast<String>()),
      airportCodes: pulumi.Input.fromValue((map['airportCodes'] as List).cast<String>()),
      alertTriggerPreferences: pulumi.Input.fromValue((map['alertTriggerPreferences'] as List).cast<String>()),
      alertTriggerPreferencesValues: pulumi.Input.fromValue((map['alertTriggerPreferencesValues'] as List).cast<String>()),
      enableds: pulumi.Input.fromValue((map['enableds'] as List).cast<String>()),
      environments: pulumi.Input.fromValue((map['environments'] as List).cast<String>()),
      eventSources: pulumi.Input.fromValue((map['eventSources'] as List).cast<String>()),
      eventTypes: pulumi.Input.fromValue((map['eventTypes'] as List).cast<String>()),
      events: pulumi.Input.fromValue((map['events'] as List).cast<String>()),
      groupBies: pulumi.Input.fromValue((map['groupBies'] as List).cast<String>()),
      healthCheckIds: pulumi.Input.fromValue((map['healthCheckIds'] as List).cast<String>()),
      incidentImpacts: pulumi.Input.fromValue((map['incidentImpacts'] as List).cast<String>()),
      inputIds: pulumi.Input.fromValue((map['inputIds'] as List).cast<String>()),
      insightClasses: pulumi.Input.fromValue((map['insightClasses'] as List).cast<String>()),
      limits: pulumi.Input.fromValue((map['limits'] as List).cast<String>()),
      logoTags: pulumi.Input.fromValue((map['logoTags'] as List).cast<String>()),
      megabitsPerSeconds: pulumi.Input.fromValue((map['megabitsPerSeconds'] as List).cast<String>()),
      newHealths: pulumi.Input.fromValue((map['newHealths'] as List).cast<String>()),
      newStatuses: pulumi.Input.fromValue((map['newStatuses'] as List).cast<String>()),
      packetsPerSeconds: pulumi.Input.fromValue((map['packetsPerSeconds'] as List).cast<String>()),
      poolIds: pulumi.Input.fromValue((map['poolIds'] as List).cast<String>()),
      popNames: pulumi.Input.fromValue((map['popNames'] as List).cast<String>()),
      products: pulumi.Input.fromValue((map['products'] as List).cast<String>()),
      projectIds: pulumi.Input.fromValue((map['projectIds'] as List).cast<String>()),
      protocols: pulumi.Input.fromValue((map['protocols'] as List).cast<String>()),
      queryTags: pulumi.Input.fromValue((map['queryTags'] as List).cast<String>()),
      requestsPerSeconds: pulumi.Input.fromValue((map['requestsPerSeconds'] as List).cast<String>()),
      selectors: pulumi.Input.fromValue((map['selectors'] as List).cast<String>()),
      services: pulumi.Input.fromValue((map['services'] as List).cast<String>()),
      slos: pulumi.Input.fromValue((map['slos'] as List).cast<String>()),
      statuses: pulumi.Input.fromValue((map['statuses'] as List).cast<String>()),
      targetHostnames: pulumi.Input.fromValue((map['targetHostnames'] as List).cast<String>()),
      targetIps: pulumi.Input.fromValue((map['targetIps'] as List).cast<String>()),
      targetZoneNames: pulumi.Input.fromValue((map['targetZoneNames'] as List).cast<String>()),
      trafficExclusions: pulumi.Input.fromValue((map['trafficExclusions'] as List).cast<String>()),
      tunnelIds: pulumi.Input.fromValue((map['tunnelIds'] as List).cast<String>()),
      tunnelNames: pulumi.Input.fromValue((map['tunnelNames'] as List).cast<String>()),
      types: pulumi.Input.fromValue((map['types'] as List).cast<String>()),
      wheres: pulumi.Input.fromValue((map['wheres'] as List).cast<String>()),
      zones: pulumi.Input.fromValue((map['zones'] as List).cast<String>()),
    );
  }
}
