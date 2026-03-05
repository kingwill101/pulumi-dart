import 'package:pulumi/pulumi.dart' as pulumi;
import 'request_log_profile_args.dart';
import 'request_log_profile_state.dart';

/// `f5bigip.ltm.RequestLogProfile` Resource used for Configures request logging using the Request Logging profile
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const request_log_profile_tc1_child = new f5bigip.ltm.RequestLogProfile("request-log-profile-tc1-child", {
///     name: "/Common/request-log-profile-tc1-child",
///     defaultsFrom: request_log_profile_tc1.name,
///     requestLogging: "disabled",
///     requestlogPool: "/Common/pool2",
///     requestlogErrorPool: "/Common/pool1",
///     requestlogProtocol: "mds-tcp",
///     requestlogErrorProtocol: "mds-tcp",
///     responselogProtocol: "mds-tcp",
///     responselogErrorProtocol: "mds-tcp",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// request_log_profile_tc1_child = f5bigip.ltm.RequestLogProfile("request-log-profile-tc1-child",
///     name="/Common/request-log-profile-tc1-child",
///     defaults_from=request_log_profile_tc1["name"],
///     request_logging="disabled",
///     requestlog_pool="/Common/pool2",
///     requestlog_error_pool="/Common/pool1",
///     requestlog_protocol="mds-tcp",
///     requestlog_error_protocol="mds-tcp",
///     responselog_protocol="mds-tcp",
///     responselog_error_protocol="mds-tcp")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var request_log_profile_tc1_child = new F5BigIP.Ltm.RequestLogProfile("request-log-profile-tc1-child", new()
///     {
///         Name = "/Common/request-log-profile-tc1-child",
///         DefaultsFrom = request_log_profile_tc1.Name,
///         RequestLogging = "disabled",
///         RequestlogPool = "/Common/pool2",
///         RequestlogErrorPool = "/Common/pool1",
///         RequestlogProtocol = "mds-tcp",
///         RequestlogErrorProtocol = "mds-tcp",
///         ResponselogProtocol = "mds-tcp",
///         ResponselogErrorProtocol = "mds-tcp",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ltm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ltm.NewRequestLogProfile(ctx, "request-log-profile-tc1-child", &ltm.RequestLogProfileArgs{
/// 			Name:                     pulumi.String("/Common/request-log-profile-tc1-child"),
/// 			DefaultsFrom:             pulumi.Any(request_log_profile_tc1.Name),
/// 			RequestLogging:           pulumi.String("disabled"),
/// 			RequestlogPool:           pulumi.String("/Common/pool2"),
/// 			RequestlogErrorPool:      pulumi.String("/Common/pool1"),
/// 			RequestlogProtocol:       pulumi.String("mds-tcp"),
/// 			RequestlogErrorProtocol:  pulumi.String("mds-tcp"),
/// 			ResponselogProtocol:      pulumi.String("mds-tcp"),
/// 			ResponselogErrorProtocol: pulumi.String("mds-tcp"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.f5bigip.ltm.RequestLogProfile;
/// import com.pulumi.f5bigip.ltm.RequestLogProfileArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var request_log_profile_tc1_child = new RequestLogProfile("request-log-profile-tc1-child", RequestLogProfileArgs.builder()
///             .name("/Common/request-log-profile-tc1-child")
///             .defaultsFrom(request_log_profile_tc1.name())
///             .requestLogging("disabled")
///             .requestlogPool("/Common/pool2")
///             .requestlogErrorPool("/Common/pool1")
///             .requestlogProtocol("mds-tcp")
///             .requestlogErrorProtocol("mds-tcp")
///             .responselogProtocol("mds-tcp")
///             .responselogErrorProtocol("mds-tcp")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   request-log-profile-tc1-child:
///     type: f5bigip:ltm:RequestLogProfile
///     properties:
///       name: /Common/request-log-profile-tc1-child
///       defaultsFrom: ${["request-log-profile-tc1"].name}
///       requestLogging: disabled
///       requestlogPool: /Common/pool2
///       requestlogErrorPool: /Common/pool1
///       requestlogProtocol: mds-tcp
///       requestlogErrorProtocol: mds-tcp
///       responselogProtocol: mds-tcp
///       responselogErrorProtocol: mds-tcp
/// ```
///
///
/// ## Import
///
/// BIG-IP LTM Request Log profiles can be imported using the `name`, e.g.
///
/// bash
///
/// ```sh
/// $ pulumi import f5bigip:ltm/requestLogProfile:RequestLogProfile test-request-log /Common/test-request-log
/// ```
class RequestLogProfile extends pulumi.CustomResource {
  /// Specifies the profile from which this profile inherits settings. The default is the system-supplied `request-log` profile.
  late final pulumi.Output<String?> defaultsFrom;
  /// Specifies user-defined description.
  late final pulumi.Output<String> description;
  /// Name of the Request Logging profile,name of Profile should be full path. Full path is the combination of the `partition + profile name`,For example `/Common/request-log-profile-tc1`.
  late final pulumi.Output<String> name;
  /// Defines the pool associated with logging request errors. The default is None.
  late final pulumi.Output<String?> proxyResponse;
  /// Defines the pool associated with logging request errors. The default is None.
  late final pulumi.Output<String?> proxycloseOnError;
  /// Defines the pool associated with logging request errors. The default is None.
  late final pulumi.Output<String?> proxyrespondOnLoggingerror;
  /// Enables or disables request logging. The default is `disabled`, possible values are `enabled` and `disabled`.
  late final pulumi.Output<String> requestLogging;
  /// Defines the pool associated with logging request errors. The default is None.
  late final pulumi.Output<String?> requestlogErrorPool;
  /// Specifies the protocol to be used for high-speed logging of request errors. The default is `mds-udp`,possible values are `mds-udp` and `mds-tcp`.
  late final pulumi.Output<String?> requestlogErrorProtocol;
  /// Specifies the directives and entries to be logged for request errors.
  late final pulumi.Output<String?> requestlogErrorTemplate;
  /// Defines the pool to send logs to. Typically, the pool will contain one or more syslog servers. It is recommended that you create a pool specifically for logging requests. The default is `none`.
  late final pulumi.Output<String?> requestlogPool;
  /// Specifies the protocol to be used for high-speed logging of requests. The default is `mds-udp`,possible values are `mds-udp` and `mds-tcp`.
  late final pulumi.Output<String?> requestlogProtocol;
  /// Specifies the directives and entries to be logged. More infor on requestlog_template can be found [here](https://techdocs.f5.com/en-us/bigip-15-0-0/external-monitoring-of-big-ip-systems-implementations/configuring-request-logging.html). how to use can be find [here](https://my.f5.com/manage/s/article/K00847516).
  late final pulumi.Output<String?> requestlogTemplate;
  /// Enables or disables response logging. The default is `disabled`, possible values are `enabled` and `disabled`.
  late final pulumi.Output<String> responseLogging;
  /// Defines the pool associated with logging response errors. The default is `none`.
  late final pulumi.Output<String?> responselogErrorPool;
  /// Specifies the protocol to be used for high-speed logging of response errors. The default is `mds-udp`,possible values are `mds-udp` and `mds-tcp`.
  late final pulumi.Output<String?> responselogErrorProtocol;
  /// Specifies the directives and entries to be logged for request errors.
  late final pulumi.Output<String?> responselogErrorTemplate;
  /// Defines the pool to send logs to. Typically, the pool contains one or more syslog servers. It is recommended that you create a pool specifically for logging responses. The default is `none`.
  late final pulumi.Output<String?> responselogPool;
  /// Specifies the protocol to be used for high-speed logging of responses. The default is `mds-udp`,possible values are `mds-udp` and `mds-tcp`.
  late final pulumi.Output<String?> responselogProtocol;
  /// Specifies the directives and entries to be logged. More infor on responselog_template can be found [here](https://techdocs.f5.com/en-us/bigip-15-0-0/external-monitoring-of-big-ip-systems-implementations/configuring-request-logging.html). how to use can be find [here](https://my.f5.com/manage/s/article/K00847516).
  late final pulumi.Output<String?> responselogTemplate;

  /// Creates a new [RequestLogProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RequestLogProfile]. {@macro pulumi_ltm_request_log_profile_request_log_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RequestLogProfile(
    String name, {
    RequestLogProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/requestLogProfile:RequestLogProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultsFrom = registerOutput<String?>('defaultsFrom');
    description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    proxyResponse = registerOutput<String?>('proxyResponse');
    proxycloseOnError = registerOutput<String?>('proxycloseOnError');
    proxyrespondOnLoggingerror = registerOutput<String?>('proxyrespondOnLoggingerror');
    requestLogging = registerOutput<String>('requestLogging');
    requestlogErrorPool = registerOutput<String?>('requestlogErrorPool');
    requestlogErrorProtocol = registerOutput<String?>('requestlogErrorProtocol');
    requestlogErrorTemplate = registerOutput<String?>('requestlogErrorTemplate');
    requestlogPool = registerOutput<String?>('requestlogPool');
    requestlogProtocol = registerOutput<String?>('requestlogProtocol');
    requestlogTemplate = registerOutput<String?>('requestlogTemplate');
    responseLogging = registerOutput<String>('responseLogging');
    responselogErrorPool = registerOutput<String?>('responselogErrorPool');
    responselogErrorProtocol = registerOutput<String?>('responselogErrorProtocol');
    responselogErrorTemplate = registerOutput<String?>('responselogErrorTemplate');
    responselogPool = registerOutput<String?>('responselogPool');
    responselogProtocol = registerOutput<String?>('responselogProtocol');
    responselogTemplate = registerOutput<String?>('responselogTemplate');
  }

  /// Gets an existing [RequestLogProfile] resource's state with the given [name] and [id].
  static RequestLogProfile get(
    String name,
    pulumi.Input<String> id, {
    RequestLogProfileState? state,
  }) {
    return RequestLogProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RequestLogProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/requestLogProfile:RequestLogProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultsFrom = registerOutput<String?>('defaultsFrom');
    description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    proxyResponse = registerOutput<String?>('proxyResponse');
    proxycloseOnError = registerOutput<String?>('proxycloseOnError');
    proxyrespondOnLoggingerror = registerOutput<String?>('proxyrespondOnLoggingerror');
    requestLogging = registerOutput<String>('requestLogging');
    requestlogErrorPool = registerOutput<String?>('requestlogErrorPool');
    requestlogErrorProtocol = registerOutput<String?>('requestlogErrorProtocol');
    requestlogErrorTemplate = registerOutput<String?>('requestlogErrorTemplate');
    requestlogPool = registerOutput<String?>('requestlogPool');
    requestlogProtocol = registerOutput<String?>('requestlogProtocol');
    requestlogTemplate = registerOutput<String?>('requestlogTemplate');
    responseLogging = registerOutput<String>('responseLogging');
    responselogErrorPool = registerOutput<String?>('responselogErrorPool');
    responselogErrorProtocol = registerOutput<String?>('responselogErrorProtocol');
    responselogErrorTemplate = registerOutput<String?>('responselogErrorTemplate');
    responselogPool = registerOutput<String?>('responselogPool');
    responselogProtocol = registerOutput<String?>('responselogProtocol');
    responselogTemplate = registerOutput<String?>('responselogTemplate');
  }
}
