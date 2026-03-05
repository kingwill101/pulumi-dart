import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_engine_http_request_response.dart';
import 'attempt_response.dart';
import 'http_request_response.dart';
import 'task_args.dart';

/// Creates a task and adds it to a queue. Tasks cannot be updated after creation; there is no UpdateTask command. * The maximum task size is 100KB.
class Task extends pulumi.CustomResource {
  /// HTTP request that is sent to the App Engine app handler. An App Engine task is a task that has AppEngineHttpRequest set.
  late final pulumi.Output<AppEngineHttpRequestResponse> appEngineHttpRequest;

  /// The time that the task was created. `create_time` will be truncated to the nearest second.
  late final pulumi.Output<String> createTime;

  /// The number of attempts dispatched. This count includes attempts which have been dispatched but haven't received a response.
  late final pulumi.Output<int> dispatchCount;

  /// The deadline for requests sent to the worker. If the worker does not respond by this deadline then the request is cancelled and the attempt is marked as a `DEADLINE_EXCEEDED` failure. Cloud Tasks will retry the task according to the RetryConfig. Note that when the request is cancelled, Cloud Tasks will stop listening for the response, but whether the worker stops processing depends on the worker. For example, if the worker is stuck, it may not react to cancelled requests. The default and maximum values depend on the type of request: * For HTTP tasks, the default is 10 minutes. The deadline must be in the interval [15 seconds, 30 minutes]. * For App Engine tasks, 0 indicates that the request has the default deadline. The default deadline depends on the [scaling type](https://cloud.google.com/appengine/docs/standard/go/how-instances-are-managed#instance_scaling) of the service: 10 minutes for standard apps with automatic scaling, 24 hours for standard apps with manual and basic scaling, and 60 minutes for flex apps. If the request deadline is set, it must be in the interval [15 seconds, 24 hours 15 seconds]. Regardless of the task's `dispatch_deadline`, the app handler will not run for longer than than the service's timeout. We recommend setting the `dispatch_deadline` to at most a few seconds more than the app handler's timeout. For more information see [Timeouts](https://cloud.google.com/tasks/docs/creating-appengine-handlers#timeouts). The value must be given as a string that indicates the length of time (in seconds) followed by `s` (for "seconds"). For more information on the format, see the documentation for [Duration](https://protobuf.dev/reference/protobuf/google.protobuf/#duration). `dispatch_deadline` will be truncated to the nearest millisecond. The deadline is an approximate deadline.
  late final pulumi.Output<String> dispatchDeadline;

  /// The status of the task's first attempt. Only dispatch_time will be set. The other Attempt information is not retained by Cloud Tasks.
  late final pulumi.Output<AttemptResponse> firstAttempt;

  /// HTTP request that is sent to the worker. An HTTP task is a task that has HttpRequest set.
  late final pulumi.Output<HttpRequestResponse> httpRequest;

  /// The status of the task's last attempt.
  late final pulumi.Output<AttemptResponse> lastAttempt;
  late final pulumi.Output<String> location;

  /// Optionally caller-specified in CreateTask. The task name. The task name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the task's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters. * `TASK_ID` can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), or underscores (_). The maximum length is 500 characters.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> queueId;

  /// The number of attempts which have received a response.
  late final pulumi.Output<int> responseCount;

  /// The time when the task is scheduled to be attempted or retried. `schedule_time` will be truncated to the nearest microsecond.
  late final pulumi.Output<String> scheduleTime;

  /// The view specifies which subset of the Task has been returned.
  late final pulumi.Output<String> view;

  /// Creates a new [Task].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Task]. {@macro pulumi_cloudtasks_v2_task_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Task(String name, {TaskArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:cloudtasks/v2:Task',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    appEngineHttpRequest = registerOutput<AppEngineHttpRequestResponse>(
      'appEngineHttpRequest',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AppEngineHttpRequestResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    createTime = registerOutput<String>('createTime');
    dispatchCount = registerOutput<int>('dispatchCount');
    dispatchDeadline = registerOutput<String>('dispatchDeadline');
    firstAttempt = registerOutput<AttemptResponse>(
      'firstAttempt',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AttemptResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    httpRequest = registerOutput<HttpRequestResponse>(
      'httpRequest',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return HttpRequestResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    lastAttempt = registerOutput<AttemptResponse>(
      'lastAttempt',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AttemptResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    queueId = registerOutput<String>('queueId');
    responseCount = registerOutput<int>('responseCount');
    scheduleTime = registerOutput<String>('scheduleTime');
    view = registerOutput<String>('view');
  }
}
