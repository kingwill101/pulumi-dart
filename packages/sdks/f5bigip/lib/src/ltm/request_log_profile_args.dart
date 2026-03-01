// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_request_log_profile_request_log_profile_args_doc}
/// The set of arguments for RequestLogProfile.
/// {@endtemplate}
/// {@macro pulumi_ltm_request_log_profile_request_log_profile_args_doc}
class RequestLogProfileArgs {
  /// Specifies the profile from which this profile inherits settings. The default is the system-supplied `request-log` profile.
  final pulumi.Input<String>? defaultsFrom;
  /// Specifies user-defined description.
  final pulumi.Input<String>? description;
  /// Name of the Request Logging profile,name of Profile should be full path. Full path is the combination of the `partition + profile name`,For example `/Common/request-log-profile-tc1`.
  final pulumi.Input<String> name;
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

  /// Creates a new [RequestLogProfileArgs].
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
  RequestLogProfileArgs({
    pulumi.Output<String>? defaultsFrom,
    pulumi.Output<String>? description,
    required pulumi.Output<String> name,
    pulumi.Output<String>? proxyResponse,
    pulumi.Output<String>? proxycloseOnError,
    pulumi.Output<String>? proxyrespondOnLoggingerror,
    pulumi.Output<String>? requestLogging,
    pulumi.Output<String>? requestlogErrorPool,
    pulumi.Output<String>? requestlogErrorProtocol,
    pulumi.Output<String>? requestlogErrorTemplate,
    pulumi.Output<String>? requestlogPool,
    pulumi.Output<String>? requestlogProtocol,
    pulumi.Output<String>? requestlogTemplate,
    pulumi.Output<String>? responseLogging,
    pulumi.Output<String>? responselogErrorPool,
    pulumi.Output<String>? responselogErrorProtocol,
    pulumi.Output<String>? responselogErrorTemplate,
    pulumi.Output<String>? responselogPool,
    pulumi.Output<String>? responselogProtocol,
    pulumi.Output<String>? responselogTemplate,
  }) :
      defaultsFrom = pulumi.Input.asOptionalInput<String>(defaultsFrom),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asInput<String>(name),
      proxyResponse = pulumi.Input.asOptionalInput<String>(proxyResponse),
      proxycloseOnError = pulumi.Input.asOptionalInput<String>(proxycloseOnError),
      proxyrespondOnLoggingerror = pulumi.Input.asOptionalInput<String>(proxyrespondOnLoggingerror),
      requestLogging = pulumi.Input.asOptionalInput<String>(requestLogging),
      requestlogErrorPool = pulumi.Input.asOptionalInput<String>(requestlogErrorPool),
      requestlogErrorProtocol = pulumi.Input.asOptionalInput<String>(requestlogErrorProtocol),
      requestlogErrorTemplate = pulumi.Input.asOptionalInput<String>(requestlogErrorTemplate),
      requestlogPool = pulumi.Input.asOptionalInput<String>(requestlogPool),
      requestlogProtocol = pulumi.Input.asOptionalInput<String>(requestlogProtocol),
      requestlogTemplate = pulumi.Input.asOptionalInput<String>(requestlogTemplate),
      responseLogging = pulumi.Input.asOptionalInput<String>(responseLogging),
      responselogErrorPool = pulumi.Input.asOptionalInput<String>(responselogErrorPool),
      responselogErrorProtocol = pulumi.Input.asOptionalInput<String>(responselogErrorProtocol),
      responselogErrorTemplate = pulumi.Input.asOptionalInput<String>(responselogErrorTemplate),
      responselogPool = pulumi.Input.asOptionalInput<String>(responselogPool),
      responselogProtocol = pulumi.Input.asOptionalInput<String>(responselogProtocol),
      responselogTemplate = pulumi.Input.asOptionalInput<String>(responselogTemplate);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultsFrom': ?defaultsFrom,
      'description': ?description,
      'name': name,
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

  factory RequestLogProfileArgs.fromMap(Map<String, dynamic> map) {
    return RequestLogProfileArgs(
      defaultsFrom: map['defaultsFrom'] == null ? null : pulumi.Output.create<String>(map['defaultsFrom'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      proxyResponse: map['proxyResponse'] == null ? null : pulumi.Output.create<String>(map['proxyResponse'] as String),
      proxycloseOnError: map['proxycloseOnError'] == null ? null : pulumi.Output.create<String>(map['proxycloseOnError'] as String),
      proxyrespondOnLoggingerror: map['proxyrespondOnLoggingerror'] == null ? null : pulumi.Output.create<String>(map['proxyrespondOnLoggingerror'] as String),
      requestLogging: map['requestLogging'] == null ? null : pulumi.Output.create<String>(map['requestLogging'] as String),
      requestlogErrorPool: map['requestlogErrorPool'] == null ? null : pulumi.Output.create<String>(map['requestlogErrorPool'] as String),
      requestlogErrorProtocol: map['requestlogErrorProtocol'] == null ? null : pulumi.Output.create<String>(map['requestlogErrorProtocol'] as String),
      requestlogErrorTemplate: map['requestlogErrorTemplate'] == null ? null : pulumi.Output.create<String>(map['requestlogErrorTemplate'] as String),
      requestlogPool: map['requestlogPool'] == null ? null : pulumi.Output.create<String>(map['requestlogPool'] as String),
      requestlogProtocol: map['requestlogProtocol'] == null ? null : pulumi.Output.create<String>(map['requestlogProtocol'] as String),
      requestlogTemplate: map['requestlogTemplate'] == null ? null : pulumi.Output.create<String>(map['requestlogTemplate'] as String),
      responseLogging: map['responseLogging'] == null ? null : pulumi.Output.create<String>(map['responseLogging'] as String),
      responselogErrorPool: map['responselogErrorPool'] == null ? null : pulumi.Output.create<String>(map['responselogErrorPool'] as String),
      responselogErrorProtocol: map['responselogErrorProtocol'] == null ? null : pulumi.Output.create<String>(map['responselogErrorProtocol'] as String),
      responselogErrorTemplate: map['responselogErrorTemplate'] == null ? null : pulumi.Output.create<String>(map['responselogErrorTemplate'] as String),
      responselogPool: map['responselogPool'] == null ? null : pulumi.Output.create<String>(map['responselogPool'] as String),
      responselogProtocol: map['responselogProtocol'] == null ? null : pulumi.Output.create<String>(map['responselogProtocol'] as String),
      responselogTemplate: map['responselogTemplate'] == null ? null : pulumi.Output.create<String>(map['responselogTemplate'] as String),
    );
  }
}

