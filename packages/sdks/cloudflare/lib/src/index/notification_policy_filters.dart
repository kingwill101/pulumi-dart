// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NotificationPolicyFilters {
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>?>? actions;
  /// Used for configuring radar_notification
  final pulumi.Input<List<String>?>? affectedAsns;
  /// Used for configuring incident_alert
  final pulumi.Input<List<String>?>? affectedComponents;
  /// Used for configuring radar_notification
  final pulumi.Input<List<String>?>? affectedLocations;
  /// Used for configuring maintenance*event*notification
  final pulumi.Input<List<String>?>? airportCodes;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>?>? alertTriggerPreferences;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>?>? alertTriggerPreferencesValues;
  /// Used for configuring load*balancing*pool*enablement*alert
  final pulumi.Input<List<String>?>? enableds;
  /// Used for configuring pages*event*alert
  final pulumi.Input<List<String>?>? environments;
  /// Used for configuring load*balancing*health_alert
  final pulumi.Input<List<String>?>? eventSources;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>?>? eventTypes;
  /// Used for configuring pages*event*alert
  final pulumi.Input<List<String>?>? events;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>?>? groupBies;
  /// Used for configuring health*check*status_notification
  final pulumi.Input<List<String>?>? healthCheckIds;
  /// Used for configuring incident_alert
  final pulumi.Input<List<String>?>? incidentImpacts;
  /// Used for configuring stream*live*notifications
  final pulumi.Input<List<String>?>? inputIds;
  /// Used for configuring security*insights*alert
  final pulumi.Input<List<String>?>? insightClasses;
  /// Used for configuring billing*usage*alert
  final pulumi.Input<List<String>?>? limits;
  /// Used for configuring logo*match*alert
  final pulumi.Input<List<String>?>? logoTags;
  /// Used for configuring advanced*ddos*attack*l4*alert
  final pulumi.Input<List<String>?>? megabitsPerSeconds;
  /// Used for configuring load*balancing*health_alert
  final pulumi.Input<List<String>?>? newHealths;
  /// Used for configuring tunnel*health*event
  final pulumi.Input<List<String>?>? newStatuses;
  /// Used for configuring advanced*ddos*attack*l4*alert
  final pulumi.Input<List<String>?>? packetsPerSeconds;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>?>? poolIds;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>?>? popNames;
  /// Used for configuring billing*usage*alert
  final pulumi.Input<List<String>?>? products;
  /// Used for configuring pages*event*alert
  final pulumi.Input<List<String>?>? projectIds;
  /// Used for configuring advanced*ddos*attack*l4*alert
  final pulumi.Input<List<String>?>? protocols;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>?>? queryTags;
  /// Used for configuring advanced*ddos*attack*l7*alert
  final pulumi.Input<List<String>?>? requestsPerSeconds;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>?>? selectors;
  /// Used for configuring clickhouse*alert*fw*ent*anomaly
  final pulumi.Input<List<String>?>? services;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>?>? slos;
  /// Used for configuring health*check*status_notification
  final pulumi.Input<List<String>?>? statuses;
  /// Used for configuring advanced*ddos*attack*l7*alert
  final pulumi.Input<List<String>?>? targetHostnames;
  /// Used for configuring advanced*ddos*attack*l4*alert
  final pulumi.Input<List<String>?>? targetIps;
  /// Used for configuring advanced*ddos*attack*l7*alert
  final pulumi.Input<List<String>?>? targetZoneNames;
  /// Used for configuring traffic*anomalies*alert
  final pulumi.Input<List<String>?>? trafficExclusions;
  /// Used for configuring tunnel*health*event
  final pulumi.Input<List<String>?>? tunnelIds;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>?>? tunnelNames;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>?>? types;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>?>? wheres;
  /// Usage depends on specific alert type
  final pulumi.Input<List<String>?>? zones;

  /// Creates a new [NotificationPolicyFilters].
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
  const NotificationPolicyFilters({
    this.actions,
    this.affectedAsns,
    this.affectedComponents,
    this.affectedLocations,
    this.airportCodes,
    this.alertTriggerPreferences,
    this.alertTriggerPreferencesValues,
    this.enableds,
    this.environments,
    this.eventSources,
    this.eventTypes,
    this.events,
    this.groupBies,
    this.healthCheckIds,
    this.incidentImpacts,
    this.inputIds,
    this.insightClasses,
    this.limits,
    this.logoTags,
    this.megabitsPerSeconds,
    this.newHealths,
    this.newStatuses,
    this.packetsPerSeconds,
    this.poolIds,
    this.popNames,
    this.products,
    this.projectIds,
    this.protocols,
    this.queryTags,
    this.requestsPerSeconds,
    this.selectors,
    this.services,
    this.slos,
    this.statuses,
    this.targetHostnames,
    this.targetIps,
    this.targetZoneNames,
    this.trafficExclusions,
    this.tunnelIds,
    this.tunnelNames,
    this.types,
    this.wheres,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'affectedAsns': ?affectedAsns,
      'affectedComponents': ?affectedComponents,
      'affectedLocations': ?affectedLocations,
      'airportCodes': ?airportCodes,
      'alertTriggerPreferences': ?alertTriggerPreferences,
      'alertTriggerPreferencesValues': ?alertTriggerPreferencesValues,
      'enableds': ?enableds,
      'environments': ?environments,
      'eventSources': ?eventSources,
      'eventTypes': ?eventTypes,
      'events': ?events,
      'groupBies': ?groupBies,
      'healthCheckIds': ?healthCheckIds,
      'incidentImpacts': ?incidentImpacts,
      'inputIds': ?inputIds,
      'insightClasses': ?insightClasses,
      'limits': ?limits,
      'logoTags': ?logoTags,
      'megabitsPerSeconds': ?megabitsPerSeconds,
      'newHealths': ?newHealths,
      'newStatuses': ?newStatuses,
      'packetsPerSeconds': ?packetsPerSeconds,
      'poolIds': ?poolIds,
      'popNames': ?popNames,
      'products': ?products,
      'projectIds': ?projectIds,
      'protocols': ?protocols,
      'queryTags': ?queryTags,
      'requestsPerSeconds': ?requestsPerSeconds,
      'selectors': ?selectors,
      'services': ?services,
      'slos': ?slos,
      'statuses': ?statuses,
      'targetHostnames': ?targetHostnames,
      'targetIps': ?targetIps,
      'targetZoneNames': ?targetZoneNames,
      'trafficExclusions': ?trafficExclusions,
      'tunnelIds': ?tunnelIds,
      'tunnelNames': ?tunnelNames,
      'types': ?types,
      'wheres': ?wheres,
      'zones': ?zones,
    };
  }

  factory NotificationPolicyFilters.fromMap(Map<String, dynamic> map) {
    return NotificationPolicyFilters(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      affectedAsns: (() { final guardedValue = map['affectedAsns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      affectedComponents: (() { final guardedValue = map['affectedComponents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      affectedLocations: (() { final guardedValue = map['affectedLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      airportCodes: (() { final guardedValue = map['airportCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      alertTriggerPreferences: (() { final guardedValue = map['alertTriggerPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      alertTriggerPreferencesValues: (() { final guardedValue = map['alertTriggerPreferencesValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enableds: (() { final guardedValue = map['enableds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      environments: (() { final guardedValue = map['environments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      eventSources: (() { final guardedValue = map['eventSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      eventTypes: (() { final guardedValue = map['eventTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      events: (() { final guardedValue = map['events']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      groupBies: (() { final guardedValue = map['groupBies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      healthCheckIds: (() { final guardedValue = map['healthCheckIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      incidentImpacts: (() { final guardedValue = map['incidentImpacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      inputIds: (() { final guardedValue = map['inputIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      insightClasses: (() { final guardedValue = map['insightClasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      logoTags: (() { final guardedValue = map['logoTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      megabitsPerSeconds: (() { final guardedValue = map['megabitsPerSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      newHealths: (() { final guardedValue = map['newHealths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      newStatuses: (() { final guardedValue = map['newStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      packetsPerSeconds: (() { final guardedValue = map['packetsPerSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      poolIds: (() { final guardedValue = map['poolIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      popNames: (() { final guardedValue = map['popNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      products: (() { final guardedValue = map['products']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      projectIds: (() { final guardedValue = map['projectIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      queryTags: (() { final guardedValue = map['queryTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      requestsPerSeconds: (() { final guardedValue = map['requestsPerSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      selectors: (() { final guardedValue = map['selectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      services: (() { final guardedValue = map['services']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      slos: (() { final guardedValue = map['slos']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetHostnames: (() { final guardedValue = map['targetHostnames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetIps: (() { final guardedValue = map['targetIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetZoneNames: (() { final guardedValue = map['targetZoneNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      trafficExclusions: (() { final guardedValue = map['trafficExclusions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tunnelIds: (() { final guardedValue = map['tunnelIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tunnelNames: (() { final guardedValue = map['tunnelNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      wheres: (() { final guardedValue = map['wheres']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
