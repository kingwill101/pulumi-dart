// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_waiting_room_additional_route.dart';
import 'get_waiting_room_cookie_attributes.dart';

/// Result data returned by getWaitingRoom.
class GetWaitingRoomResult {
  /// Only available for the Waiting Room Advanced subscription. Additional hostname and path combinations to which this waiting room will be applied. There is an implied wildcard at the end of the path. The hostname and path combination must be unique to this and all other waiting rooms.
  final List<GetWaitingRoomAdditionalRoute>? additionalRoutes;
  /// Configures cookie attributes for the waiting room cookie. This encrypted cookie stores a user's status in the waiting room, such as queue position.
  final GetWaitingRoomCookieAttributes? cookieAttributes;
  /// Appends a '_' + a custom suffix to the end of Cloudflare Waiting Room's cookie name(_*cf*waitingroom). If `cookieSuffix` is "abcd", the cookie name will be `__cf_waitingroom_abcd`. This field is required if using `additionalRoutes`.
  final String? cookieSuffix;
  final String? createdOn;
  /// Only available for the Waiting Room Advanced subscription. This is a template html file that will be rendered at the edge. If no custom*page*html is provided, the default waiting room will be used. The template is based on mustache ( https://mustache.github.io/ ). There are several variables that are evaluated by the Cloudflare edge:
  final String? customPageHtml;
  final String? defaultTemplateLanguage;
  final String? description;
  final bool? disableSessionRenewal;
  final List<String>? enabledOriginCommands;
  final String? host;
  final String? id;
  final bool? jsonResponseEnabled;
  final String? modifiedOn;
  final String? name;
  final int? newUsersPerMinute;
  final String? nextEventPrequeueStartTime;
  final String? nextEventStartTime;
  final String? path;
  final bool? queueAll;
  final String? queueingMethod;
  final int? queueingStatusCode;
  final int? sessionDuration;
  final bool? suspended;
  final int? totalActiveUsers;
  final String? turnstileAction;
  final String? turnstileMode;
  final String? waitingRoomId;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetWaitingRoomResult].
  /// [additionalRoutes] Only available for the Waiting Room Advanced subscription. Additional hostname and path combinations to which this waiting room will be applied. There is an implied wildcard at the end of the path. The hostname and path combination must be unique to this and all other waiting rooms.
  /// [cookieAttributes] Configures cookie attributes for the waiting room cookie. This encrypted cookie stores a user's status in the waiting room, such as queue position.
  /// [cookieSuffix] Appends a '_' + a custom suffix to the end of Cloudflare Waiting Room's cookie name(_*cf*waitingroom). If `cookieSuffix` is "abcd", the cookie name will be `__cf_waitingroom_abcd`. This field is required if using `additionalRoutes`.
  /// [createdOn] Optional.
  /// [customPageHtml] Only available for the Waiting Room Advanced subscription. This is a template html file that will be rendered at the edge. If no custom*page*html is provided, the default waiting room will be used. The template is based on mustache ( https://mustache.github.io/ ). There are several variables that are evaluated by the Cloudflare edge:
  /// [defaultTemplateLanguage] Optional.
  /// [description] Optional.
  /// [disableSessionRenewal] Optional.
  /// [enabledOriginCommands] Optional.
  /// [host] Optional.
  /// [id] Optional.
  /// [jsonResponseEnabled] Optional.
  /// [modifiedOn] Optional.
  /// [name] Optional.
  /// [newUsersPerMinute] Optional.
  /// [nextEventPrequeueStartTime] Optional.
  /// [nextEventStartTime] Optional.
  /// [path] Optional.
  /// [queueAll] Optional.
  /// [queueingMethod] Optional.
  /// [queueingStatusCode] Optional.
  /// [sessionDuration] Optional.
  /// [suspended] Optional.
  /// [totalActiveUsers] Optional.
  /// [turnstileAction] Optional.
  /// [turnstileMode] Optional.
  /// [waitingRoomId] Optional.
  /// [zoneId] Identifier.
  const GetWaitingRoomResult({
    this.additionalRoutes,
    this.cookieAttributes,
    this.cookieSuffix,
    this.createdOn,
    this.customPageHtml,
    this.defaultTemplateLanguage,
    this.description,
    this.disableSessionRenewal,
    this.enabledOriginCommands,
    this.host,
    this.id,
    this.jsonResponseEnabled,
    this.modifiedOn,
    this.name,
    this.newUsersPerMinute,
    this.nextEventPrequeueStartTime,
    this.nextEventStartTime,
    this.path,
    this.queueAll,
    this.queueingMethod,
    this.queueingStatusCode,
    this.sessionDuration,
    this.suspended,
    this.totalActiveUsers,
    this.turnstileAction,
    this.turnstileMode,
    this.waitingRoomId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalRoutes': ?(() { final guardedValue = additionalRoutes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWaitingRoomAdditionalRoute, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'cookieAttributes': ?cookieAttributes?.toMap(),
      'cookieSuffix': ?cookieSuffix,
      'createdOn': ?createdOn,
      'customPageHtml': ?customPageHtml,
      'defaultTemplateLanguage': ?defaultTemplateLanguage,
      'description': ?description,
      'disableSessionRenewal': ?disableSessionRenewal,
      'enabledOriginCommands': ?enabledOriginCommands,
      'host': ?host,
      'id': ?id,
      'jsonResponseEnabled': ?jsonResponseEnabled,
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'newUsersPerMinute': ?newUsersPerMinute,
      'nextEventPrequeueStartTime': ?nextEventPrequeueStartTime,
      'nextEventStartTime': ?nextEventStartTime,
      'path': ?path,
      'queueAll': ?queueAll,
      'queueingMethod': ?queueingMethod,
      'queueingStatusCode': ?queueingStatusCode,
      'sessionDuration': ?sessionDuration,
      'suspended': ?suspended,
      'totalActiveUsers': ?totalActiveUsers,
      'turnstileAction': ?turnstileAction,
      'turnstileMode': ?turnstileMode,
      'waitingRoomId': ?waitingRoomId,
      'zoneId': ?zoneId,
    };
  }

  factory GetWaitingRoomResult.fromMap(Map<String, dynamic> map) {
    return GetWaitingRoomResult(
      additionalRoutes: (() { final guardedValue = map['additionalRoutes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWaitingRoomAdditionalRoute>(guardedValue, (value) => GetWaitingRoomAdditionalRoute.fromMap((value as Map).cast<String, dynamic>())); })(),
      cookieAttributes: (() { final guardedValue = map['cookieAttributes']; if (guardedValue == null) return null; return GetWaitingRoomCookieAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      cookieSuffix: (() { final guardedValue = map['cookieSuffix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customPageHtml: (() { final guardedValue = map['customPageHtml']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultTemplateLanguage: (() { final guardedValue = map['defaultTemplateLanguage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disableSessionRenewal: (() { final guardedValue = map['disableSessionRenewal']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enabledOriginCommands: (() { final guardedValue = map['enabledOriginCommands']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      jsonResponseEnabled: (() { final guardedValue = map['jsonResponseEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      newUsersPerMinute: (() { final guardedValue = map['newUsersPerMinute']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      nextEventPrequeueStartTime: (() { final guardedValue = map['nextEventPrequeueStartTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nextEventStartTime: (() { final guardedValue = map['nextEventStartTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queueAll: (() { final guardedValue = map['queueAll']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      queueingMethod: (() { final guardedValue = map['queueingMethod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queueingStatusCode: (() { final guardedValue = map['queueingStatusCode']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      sessionDuration: (() { final guardedValue = map['sessionDuration']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      suspended: (() { final guardedValue = map['suspended']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      totalActiveUsers: (() { final guardedValue = map['totalActiveUsers']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      turnstileAction: (() { final guardedValue = map['turnstileAction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      turnstileMode: (() { final guardedValue = map['turnstileMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      waitingRoomId: (() { final guardedValue = map['waitingRoomId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
