// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RequestLogProfile resources.
class RequestLogProfileState {
  /// Specifies the profile from which this profile inherits settings. The default is the system-supplied `request-log` profile.
  final pulumi.Input<String>? defaultsFrom;
  /// Specifies user-defined description.
  final pulumi.Input<String>? description;
  /// Name of the Request Logging profile,name of Profile should be full path. Full path is the combination of the `partition + profile name`,For example `/Common/request-log-profile-tc1`.
  final pulumi.Input<String>? name;
  /// Defines the pool associated with logging request errors. The default is None.
  final pulumi.Input<String>? proxyResponse;
  /// Defines the pool associated with logging request errors. The default is None.
  final pulumi.Input<String>? proxycloseOnError;
  /// Defines the pool associated with logging request errors. The default is None.
  final pulumi.Input<String>? proxyrespondOnLoggingerror;
  /// Enables or disables request logging. The default is `disabled`, possible values are `enabled` and `disabled`.
  final pulumi.Input<String>? requestLogging;
  /// Defines the pool associated with logging request errors. The default is None.
  final pulumi.Input<String>? requestlogErrorPool;
  /// Specifies the protocol to be used for high-speed logging of request errors. The default is `mds-udp`,possible values are `mds-udp` and `mds-tcp`.
  final pulumi.Input<String>? requestlogErrorProtocol;
  /// Specifies the directives and entries to be logged for request errors.
  final pulumi.Input<String>? requestlogErrorTemplate;
  /// Defines the pool to send logs to. Typically, the pool will contain one or more syslog servers. It is recommended that you create a pool specifically for logging requests. The default is `none`.
  final pulumi.Input<String>? requestlogPool;
  /// Specifies the protocol to be used for high-speed logging of requests. The default is `mds-udp`,possible values are `mds-udp` and `mds-tcp`.
  final pulumi.Input<String>? requestlogProtocol;
  /// Specifies the directives and entries to be logged. More infor on requestlog_template can be found [here](https://techdocs.f5.com/en-us/bigip-15-0-0/external-monitoring-of-big-ip-systems-implementations/configuring-request-logging.html). how to use can be find [here](https://my.f5.com/manage/s/article/K00847516).
  final pulumi.Input<String>? requestlogTemplate;
  /// Enables or disables response logging. The default is `disabled`, possible values are `enabled` and `disabled`.
  final pulumi.Input<String>? responseLogging;
  /// Defines the pool associated with logging response errors. The default is `none`.
  final pulumi.Input<String>? responselogErrorPool;
  /// Specifies the protocol to be used for high-speed logging of response errors. The default is `mds-udp`,possible values are `mds-udp` and `mds-tcp`.
  final pulumi.Input<String>? responselogErrorProtocol;
  /// Specifies the directives and entries to be logged for request errors.
  final pulumi.Input<String>? responselogErrorTemplate;
  /// Defines the pool to send logs to. Typically, the pool contains one or more syslog servers. It is recommended that you create a pool specifically for logging responses. The default is `none`.
  final pulumi.Input<String>? responselogPool;
  /// Specifies the protocol to be used for high-speed logging of responses. The default is `mds-udp`,possible values are `mds-udp` and `mds-tcp`.
  final pulumi.Input<String>? responselogProtocol;
  /// Specifies the directives and entries to be logged. More infor on responselog_template can be found [here](https://techdocs.f5.com/en-us/bigip-15-0-0/external-monitoring-of-big-ip-systems-implementations/configuring-request-logging.html). how to use can be find [here](https://my.f5.com/manage/s/article/K00847516).
  final pulumi.Input<String>? responselogTemplate;

  /// Creates a new [RequestLogProfileState].
  /// [defaultsFrom] Specifies the profile from which this profile inherits settings. The default is the system-supplied `request-log` profile.
  /// [description] Specifies user-defined description.
  /// [name] Name of the Request Logging profile,name of Profile should be full path. Full path is the combination of the `partition + profile name`,For example `/Common/request-log-profile-tc1`.
  /// [proxyResponse] Defines the pool associated with logging request errors. The default is None.
  /// [proxycloseOnError] Defines the pool associated with logging request errors. The default is None.
  /// [proxyrespondOnLoggingerror] Defines the pool associated with logging request errors. The default is None.
  /// [requestLogging] Enables or disables request logging. The default is `disabled`, possible values are `enabled` and `disabled`.
  /// [requestlogErrorPool] Defines the pool associated with logging request errors. The default is None.
  /// [requestlogErrorProtocol] Specifies the protocol to be used for high-speed logging of request errors. The default is `mds-udp`,possible values are `mds-udp` and `mds-tcp`.
  /// [requestlogErrorTemplate] Specifies the directives and entries to be logged for request errors.
  /// [requestlogPool] Defines the pool to send logs to. Typically, the pool will contain one or more syslog servers. It is recommended that you create a pool specifically for logging requests. The default is `none`.
  /// [requestlogProtocol] Specifies the protocol to be used for high-speed logging of requests. The default is `mds-udp`,possible values are `mds-udp` and `mds-tcp`.
  /// [requestlogTemplate] Specifies the directives and entries to be logged. More infor on requestlog_template can be found [here](https://techdocs.f5.com/en-us/bigip-15-0-0/external-monitoring-of-big-ip-systems-implementations/configuring-request-logging.html). how to use can be find [here](https://my.f5.com/manage/s/article/K00847516).
  /// [responseLogging] Enables or disables response logging. The default is `disabled`, possible values are `enabled` and `disabled`.
  /// [responselogErrorPool] Defines the pool associated with logging response errors. The default is `none`.
  /// [responselogErrorProtocol] Specifies the protocol to be used for high-speed logging of response errors. The default is `mds-udp`,possible values are `mds-udp` and `mds-tcp`.
  /// [responselogErrorTemplate] Specifies the directives and entries to be logged for request errors.
  /// [responselogPool] Defines the pool to send logs to. Typically, the pool contains one or more syslog servers. It is recommended that you create a pool specifically for logging responses. The default is `none`.
  /// [responselogProtocol] Specifies the protocol to be used for high-speed logging of responses. The default is `mds-udp`,possible values are `mds-udp` and `mds-tcp`.
  /// [responselogTemplate] Specifies the directives and entries to be logged. More infor on responselog_template can be found [here](https://techdocs.f5.com/en-us/bigip-15-0-0/external-monitoring-of-big-ip-systems-implementations/configuring-request-logging.html). how to use can be find [here](https://my.f5.com/manage/s/article/K00847516).
  const RequestLogProfileState({
    this.defaultsFrom,
    this.description,
    this.name,
    this.proxyResponse,
    this.proxycloseOnError,
    this.proxyrespondOnLoggingerror,
    this.requestLogging,
    this.requestlogErrorPool,
    this.requestlogErrorProtocol,
    this.requestlogErrorTemplate,
    this.requestlogPool,
    this.requestlogProtocol,
    this.requestlogTemplate,
    this.responseLogging,
    this.responselogErrorPool,
    this.responselogErrorProtocol,
    this.responselogErrorTemplate,
    this.responselogPool,
    this.responselogProtocol,
    this.responselogTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultsFrom': ?defaultsFrom,
      'description': ?description,
      'name': ?name,
      'proxyResponse': ?proxyResponse,
      'proxycloseOnError': ?proxycloseOnError,
      'proxyrespondOnLoggingerror': ?proxyrespondOnLoggingerror,
      'requestLogging': ?requestLogging,
      'requestlogErrorPool': ?requestlogErrorPool,
      'requestlogErrorProtocol': ?requestlogErrorProtocol,
      'requestlogErrorTemplate': ?requestlogErrorTemplate,
      'requestlogPool': ?requestlogPool,
      'requestlogProtocol': ?requestlogProtocol,
      'requestlogTemplate': ?requestlogTemplate,
      'responseLogging': ?responseLogging,
      'responselogErrorPool': ?responselogErrorPool,
      'responselogErrorProtocol': ?responselogErrorProtocol,
      'responselogErrorTemplate': ?responselogErrorTemplate,
      'responselogPool': ?responselogPool,
      'responselogProtocol': ?responselogProtocol,
      'responselogTemplate': ?responselogTemplate,
    };
  }

  factory RequestLogProfileState.fromMap(Map<String, dynamic> map) {
    return RequestLogProfileState(
      defaultsFrom: (() { final guardedValue = map['defaultsFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyResponse: (() { final guardedValue = map['proxyResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxycloseOnError: (() { final guardedValue = map['proxycloseOnError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyrespondOnLoggingerror: (() { final guardedValue = map['proxyrespondOnLoggingerror']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestLogging: (() { final guardedValue = map['requestLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestlogErrorPool: (() { final guardedValue = map['requestlogErrorPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestlogErrorProtocol: (() { final guardedValue = map['requestlogErrorProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestlogErrorTemplate: (() { final guardedValue = map['requestlogErrorTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestlogPool: (() { final guardedValue = map['requestlogPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestlogProtocol: (() { final guardedValue = map['requestlogProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestlogTemplate: (() { final guardedValue = map['requestlogTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responseLogging: (() { final guardedValue = map['responseLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responselogErrorPool: (() { final guardedValue = map['responselogErrorPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responselogErrorProtocol: (() { final guardedValue = map['responselogErrorProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responselogErrorTemplate: (() { final guardedValue = map['responselogErrorTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responselogPool: (() { final guardedValue = map['responselogPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responselogProtocol: (() { final guardedValue = map['responselogProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responselogTemplate: (() { final guardedValue = map['responselogTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

