// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_app_engine_routing_override.dart';
import 'queue_http_target.dart';
import 'queue_rate_limits.dart';
import 'queue_retry_config.dart';
import 'queue_stackdriver_logging_config.dart';

/// Input properties used for looking up and filtering Queue resources.
class QueueState {
  /// Overrides for task-level appEngineRouting. These settings apply only
  /// to App Engine tasks in this queue
  /// Structure is documented below.
  final pulumi.Input<QueueAppEngineRoutingOverride>? appEngineRoutingOverride;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The desired state of the queue. Use this to pause and resume the queue.
  ///
  /// * RUNNING: The queue is running. Tasks can be dispatched.
  /// * PAUSED: The queue is paused. Tasks are not dispatched but can be added to the queue.
  final pulumi.Input<String>? desiredState;
  /// Modifies HTTP target for HTTP tasks.
  /// Structure is documented below.
  final pulumi.Input<QueueHttpTarget>? httpTarget;
  /// The location of the queue
  final pulumi.Input<String>? location;
  /// The queue name.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Rate limits for task dispatches.
  /// The queue's actual dispatch rate is the result of:
  /// * Number of tasks in the queue
  /// * User-specified throttling: rateLimits, retryConfig, and the queue's state.
  /// * System throttling due to 429 (Too Many Requests) or 503 (Service
  /// Unavailable) responses from the worker, high error rates, or to
  /// smooth sudden large traffic spikes.
  /// Structure is documented below.
  final pulumi.Input<QueueRateLimits>? rateLimits;
  /// Settings that determine the retry behavior.
  /// Structure is documented below.
  final pulumi.Input<QueueRetryConfig>? retryConfig;
  /// Configuration options for writing logs to Stackdriver Logging.
  /// Structure is documented below.
  final pulumi.Input<QueueStackdriverLoggingConfig>? stackdriverLoggingConfig;
  /// The current state of the queue.
  final pulumi.Input<String>? state;

  /// Creates a new [QueueState].
  /// [appEngineRoutingOverride] Overrides for task-level appEngineRouting. These settings apply only
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [desiredState] The desired state of the queue. Use this to pause and resume the queue.
  /// [httpTarget] Modifies HTTP target for HTTP tasks.
  /// [location] The location of the queue
  /// [name] The queue name.
  /// [project] The ID of the project in which the resource belongs.
  /// [rateLimits] Rate limits for task dispatches.
  /// [retryConfig] Settings that determine the retry behavior.
  /// [stackdriverLoggingConfig] Configuration options for writing logs to Stackdriver Logging.
  /// [state] The current state of the queue.
  const QueueState({
    this.appEngineRoutingOverride,
    this.deletionPolicy,
    this.desiredState,
    this.httpTarget,
    this.location,
    this.name,
    this.project,
    this.rateLimits,
    this.retryConfig,
    this.stackdriverLoggingConfig,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineRoutingOverride': ?pulumi.Input.mapOptionalInputValue<QueueAppEngineRoutingOverride, Map<String, dynamic>>(appEngineRoutingOverride, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'desiredState': ?desiredState,
      'httpTarget': ?pulumi.Input.mapOptionalInputValue<QueueHttpTarget, Map<String, dynamic>>(httpTarget, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'rateLimits': ?pulumi.Input.mapOptionalInputValue<QueueRateLimits, Map<String, dynamic>>(rateLimits, (value) => value.toMap()),
      'retryConfig': ?pulumi.Input.mapOptionalInputValue<QueueRetryConfig, Map<String, dynamic>>(retryConfig, (value) => value.toMap()),
      'stackdriverLoggingConfig': ?pulumi.Input.mapOptionalInputValue<QueueStackdriverLoggingConfig, Map<String, dynamic>>(stackdriverLoggingConfig, (value) => value.toMap()),
      'state': ?state,
    };
  }

  factory QueueState.fromMap(Map<String, dynamic> map) {
    return QueueState(
      appEngineRoutingOverride: (() { final guardedValue = map['appEngineRoutingOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueueAppEngineRoutingOverride.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredState: (() { final guardedValue = map['desiredState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpTarget: (() { final guardedValue = map['httpTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueueHttpTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rateLimits: (() { final guardedValue = map['rateLimits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueueRateLimits.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retryConfig: (() { final guardedValue = map['retryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueueRetryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stackdriverLoggingConfig: (() { final guardedValue = map['stackdriverLoggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueueStackdriverLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
