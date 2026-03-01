import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_args.dart';
import 'workload_entity_search_query.dart';
import 'workload_state.dart';
import 'workload_status_config_automatic.dart';
import 'workload_status_config_static.dart';

/// Use this resource to create, update, and delete a New Relic One workload.
///
/// A New Relic User API key is required to provision this resource.  Set the `api_key`
/// attribute in the `provider` block or the `NEW_RELIC_API_KEY` environment
/// variable with your User API key.
///
/// ## Example Usage
///
/// Include entities with a certain string on the name.
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.plugins.Workload("foo", {
///     name: "Example workload",
///     accountId: "12345678",
///     entityGuids: ["MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1"],
///     entitySearchQueries: [{
///         query: "name like '%Example application%'",
///     }],
///     scopeAccountIds: ["12345678"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.plugins.Workload("foo",
///     name="Example workload",
///     account_id="12345678",
///     entity_guids=["MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1"],
///     entity_search_queries=[{
///         "query": "name like '%Example application%'",
///     }],
///     scope_account_ids=["12345678"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.Plugins.Workload("foo", new()
///     {
///         Name = "Example workload",
///         AccountId = "12345678",
///         EntityGuids = new[]
///         {
///             "MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1",
///         },
///         EntitySearchQueries = new[]
///         {
///             new NewRelic.Plugins.Inputs.WorkloadEntitySearchQueryArgs
///             {
///                 Query = "name like '%Example application%'",
///             },
///         },
///         ScopeAccountIds = new[]
///         {
///             "12345678",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic/plugins"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := plugins.NewWorkload(ctx, "foo", &plugins.WorkloadArgs{
/// 			Name:      pulumi.String("Example workload"),
/// 			AccountId: pulumi.String("12345678"),
/// 			EntityGuids: pulumi.StringArray{
/// 				pulumi.String("MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1"),
/// 			},
/// 			EntitySearchQueries: plugins.WorkloadEntitySearchQueryArray{
/// 				&plugins.WorkloadEntitySearchQueryArgs{
/// 					Query: pulumi.String("name like '%Example application%'"),
/// 				},
/// 			},
/// 			ScopeAccountIds: pulumi.StringArray{
/// 				pulumi.String("12345678"),
/// 			},
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
/// import com.pulumi.newrelic.plugins.Workload;
/// import com.pulumi.newrelic.plugins.WorkloadArgs;
/// import com.pulumi.newrelic.plugins.inputs.WorkloadEntitySearchQueryArgs;
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
///         var foo = new Workload("foo", WorkloadArgs.builder()
///             .name("Example workload")
///             .accountId("12345678")
///             .entityGuids("MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1")
///             .entitySearchQueries(WorkloadEntitySearchQueryArgs.builder()
///                 .query("name like '%Example application%'")
///                 .build())
///             .scopeAccountIds("12345678")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:plugins:Workload
///     properties:
///       name: Example workload
///       accountId: 1.2345678e+07
///       entityGuids:
///         - MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1
///       entitySearchQueries:
///         - query: name like '%Example application%'
///       scopeAccountIds:
///         - 1.2345678e+07
/// ```
///
///
/// Include entities with a set of tags.
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.plugins.Workload("foo", {
///     name: "Example workload with tags",
///     accountId: "12345678",
///     entityGuids: ["MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1"],
///     entitySearchQueries: [{
///         query: "tags.accountId = '12345678' AND tags.environment='production' AND tags.language='java'",
///     }],
///     scopeAccountIds: ["12345678"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.plugins.Workload("foo",
///     name="Example workload with tags",
///     account_id="12345678",
///     entity_guids=["MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1"],
///     entity_search_queries=[{
///         "query": "tags.accountId = '12345678' AND tags.environment='production' AND tags.language='java'",
///     }],
///     scope_account_ids=["12345678"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.Plugins.Workload("foo", new()
///     {
///         Name = "Example workload with tags",
///         AccountId = "12345678",
///         EntityGuids = new[]
///         {
///             "MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1",
///         },
///         EntitySearchQueries = new[]
///         {
///             new NewRelic.Plugins.Inputs.WorkloadEntitySearchQueryArgs
///             {
///                 Query = "tags.accountId = '12345678' AND tags.environment='production' AND tags.language='java'",
///             },
///         },
///         ScopeAccountIds = new[]
///         {
///             "12345678",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic/plugins"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := plugins.NewWorkload(ctx, "foo", &plugins.WorkloadArgs{
/// 			Name:      pulumi.String("Example workload with tags"),
/// 			AccountId: pulumi.String("12345678"),
/// 			EntityGuids: pulumi.StringArray{
/// 				pulumi.String("MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1"),
/// 			},
/// 			EntitySearchQueries: plugins.WorkloadEntitySearchQueryArray{
/// 				&plugins.WorkloadEntitySearchQueryArgs{
/// 					Query: pulumi.String("tags.accountId = '12345678' AND tags.environment='production' AND tags.language='java'"),
/// 				},
/// 			},
/// 			ScopeAccountIds: pulumi.StringArray{
/// 				pulumi.String("12345678"),
/// 			},
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
/// import com.pulumi.newrelic.plugins.Workload;
/// import com.pulumi.newrelic.plugins.WorkloadArgs;
/// import com.pulumi.newrelic.plugins.inputs.WorkloadEntitySearchQueryArgs;
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
///         var foo = new Workload("foo", WorkloadArgs.builder()
///             .name("Example workload with tags")
///             .accountId("12345678")
///             .entityGuids("MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1")
///             .entitySearchQueries(WorkloadEntitySearchQueryArgs.builder()
///                 .query("tags.accountId = '12345678' AND tags.environment='production' AND tags.language='java'")
///                 .build())
///             .scopeAccountIds("12345678")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:plugins:Workload
///     properties:
///       name: Example workload with tags
///       accountId: 1.2345678e+07
///       entityGuids:
///         - MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1
///       entitySearchQueries:
///         - query: tags.accountId = '12345678' AND tags.environment='production' AND tags.language='java'
///       scopeAccountIds:
///         - 1.2345678e+07
/// ```
///
///
/// Include entities with a set of tags.
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.plugins.Workload("foo", {
///     name: "Example workload with tags",
///     accountId: "12345678",
///     entityGuids: ["MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1"],
///     entitySearchQueries: [{
///         query: "tags.accountId = '12345678' AND tags.environment='production' AND tags.language='java'",
///     }],
///     scopeAccountIds: ["12345678"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.plugins.Workload("foo",
///     name="Example workload with tags",
///     account_id="12345678",
///     entity_guids=["MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1"],
///     entity_search_queries=[{
///         "query": "tags.accountId = '12345678' AND tags.environment='production' AND tags.language='java'",
///     }],
///     scope_account_ids=["12345678"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.Plugins.Workload("foo", new()
///     {
///         Name = "Example workload with tags",
///         AccountId = "12345678",
///         EntityGuids = new[]
///         {
///             "MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1",
///         },
///         EntitySearchQueries = new[]
///         {
///             new NewRelic.Plugins.Inputs.WorkloadEntitySearchQueryArgs
///             {
///                 Query = "tags.accountId = '12345678' AND tags.environment='production' AND tags.language='java'",
///             },
///         },
///         ScopeAccountIds = new[]
///         {
///             "12345678",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic/plugins"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := plugins.NewWorkload(ctx, "foo", &plugins.WorkloadArgs{
/// 			Name:      pulumi.String("Example workload with tags"),
/// 			AccountId: pulumi.String("12345678"),
/// 			EntityGuids: pulumi.StringArray{
/// 				pulumi.String("MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1"),
/// 			},
/// 			EntitySearchQueries: plugins.WorkloadEntitySearchQueryArray{
/// 				&plugins.WorkloadEntitySearchQueryArgs{
/// 					Query: pulumi.String("tags.accountId = '12345678' AND tags.environment='production' AND tags.language='java'"),
/// 				},
/// 			},
/// 			ScopeAccountIds: pulumi.StringArray{
/// 				pulumi.String("12345678"),
/// 			},
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
/// import com.pulumi.newrelic.plugins.Workload;
/// import com.pulumi.newrelic.plugins.WorkloadArgs;
/// import com.pulumi.newrelic.plugins.inputs.WorkloadEntitySearchQueryArgs;
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
///         var foo = new Workload("foo", WorkloadArgs.builder()
///             .name("Example workload with tags")
///             .accountId("12345678")
///             .entityGuids("MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1")
///             .entitySearchQueries(WorkloadEntitySearchQueryArgs.builder()
///                 .query("tags.accountId = '12345678' AND tags.environment='production' AND tags.language='java'")
///                 .build())
///             .scopeAccountIds("12345678")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:plugins:Workload
///     properties:
///       name: Example workload with tags
///       accountId: 1.2345678e+07
///       entityGuids:
///         - MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1
///       entitySearchQueries:
///         - query: tags.accountId = '12345678' AND tags.environment='production' AND tags.language='java'
///       scopeAccountIds:
///         - 1.2345678e+07
/// ```
///
///
/// Include automatic status
///
/// > The global status of your workload is a quick indicator of the workload health. You can configure it to be calculated automatically, and you can also set an alert and get a notification whenever the workload stops being operational. Alternatively, you can communicate a certain status of the workload by setting up a static value and a description. [See our docs](https://docs.newrelic.com/docs/workloads/use-workloads/workloads/workload-status)
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.plugins.Workload("foo", {
///     name: "Example workload",
///     accountId: "12345678",
///     entityGuids: ["MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1"],
///     entitySearchQueries: [{
///         query: "name like '%Example application%'",
///     }],
///     scopeAccountIds: ["12345678"],
///     description: "Description",
///     statusConfigAutomatic: {
///         enabled: true,
///         remainingEntitiesRule: {
///             remainingEntitiesRuleRollup: {
///                 strategy: "BEST_STATUS_WINS",
///                 thresholdType: "FIXED",
///                 thresholdValue: 100,
///                 groupBy: "ENTITY_TYPE",
///             },
///         },
///         rules: [{
///             entityGuids: ["MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1"],
///             nrqlQueries: [{
///                 query: "name like '%Example application2%'",
///             }],
///             rollup: {
///                 strategy: "BEST_STATUS_WINS",
///                 thresholdType: "FIXED",
///                 thresholdValue: 100,
///             },
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.plugins.Workload("foo",
///     name="Example workload",
///     account_id="12345678",
///     entity_guids=["MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1"],
///     entity_search_queries=[{
///         "query": "name like '%Example application%'",
///     }],
///     scope_account_ids=["12345678"],
///     description="Description",
///     status_config_automatic={
///         "enabled": True,
///         "remaining_entities_rule": {
///             "remaining_entities_rule_rollup": {
///                 "strategy": "BEST_STATUS_WINS",
///                 "threshold_type": "FIXED",
///                 "threshold_value": 100,
///                 "group_by": "ENTITY_TYPE",
///             },
///         },
///         "rules": [{
///             "entity_guids": ["MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1"],
///             "nrql_queries": [{
///                 "query": "name like '%Example application2%'",
///             }],
///             "rollup": {
///                 "strategy": "BEST_STATUS_WINS",
///                 "threshold_type": "FIXED",
///                 "threshold_value": 100,
///             },
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.Plugins.Workload("foo", new()
///     {
///         Name = "Example workload",
///         AccountId = "12345678",
///         EntityGuids = new[]
///         {
///             "MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1",
///         },
///         EntitySearchQueries = new[]
///         {
///             new NewRelic.Plugins.Inputs.WorkloadEntitySearchQueryArgs
///             {
///                 Query = "name like '%Example application%'",
///             },
///         },
///         ScopeAccountIds = new[]
///         {
///             "12345678",
///         },
///         Description = "Description",
///         StatusConfigAutomatic = new NewRelic.Plugins.Inputs.WorkloadStatusConfigAutomaticArgs
///         {
///             Enabled = true,
///             RemainingEntitiesRule = new NewRelic.Plugins.Inputs.WorkloadStatusConfigAutomaticRemainingEntitiesRuleArgs
///             {
///                 RemainingEntitiesRuleRollup = new NewRelic.Plugins.Inputs.WorkloadStatusConfigAutomaticRemainingEntitiesRuleRemainingEntitiesRuleRollupArgs
///                 {
///                     Strategy = "BEST_STATUS_WINS",
///                     ThresholdType = "FIXED",
///                     ThresholdValue = 100,
///                     GroupBy = "ENTITY_TYPE",
///                 },
///             },
///             Rules = new[]
///             {
///                 new NewRelic.Plugins.Inputs.WorkloadStatusConfigAutomaticRuleArgs
///                 {
///                     EntityGuids = new[]
///                     {
///                         "MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1",
///                     },
///                     NrqlQueries = new[]
///                     {
///                         new NewRelic.Plugins.Inputs.WorkloadStatusConfigAutomaticRuleNrqlQueryArgs
///                         {
///                             Query = "name like '%Example application2%'",
///                         },
///                     },
///                     Rollup = new NewRelic.Plugins.Inputs.WorkloadStatusConfigAutomaticRuleRollupArgs
///                     {
///                         Strategy = "BEST_STATUS_WINS",
///                         ThresholdType = "FIXED",
///                         ThresholdValue = 100,
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic/plugins"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := plugins.NewWorkload(ctx, "foo", &plugins.WorkloadArgs{
/// 			Name:      pulumi.String("Example workload"),
/// 			AccountId: pulumi.String("12345678"),
/// 			EntityGuids: pulumi.StringArray{
/// 				pulumi.String("MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1"),
/// 			},
/// 			EntitySearchQueries: plugins.WorkloadEntitySearchQueryArray{
/// 				&plugins.WorkloadEntitySearchQueryArgs{
/// 					Query: pulumi.String("name like '%Example application%'"),
/// 				},
/// 			},
/// 			ScopeAccountIds: pulumi.StringArray{
/// 				pulumi.String("12345678"),
/// 			},
/// 			Description: pulumi.String("Description"),
/// 			StatusConfigAutomatic: &plugins.WorkloadStatusConfigAutomaticArgs{
/// 				Enabled: pulumi.Bool(true),
/// 				RemainingEntitiesRule: &plugins.WorkloadStatusConfigAutomaticRemainingEntitiesRuleArgs{
/// 					RemainingEntitiesRuleRollup: &plugins.WorkloadStatusConfigAutomaticRemainingEntitiesRuleRemainingEntitiesRuleRollupArgs{
/// 						Strategy:       pulumi.String("BEST_STATUS_WINS"),
/// 						ThresholdType:  pulumi.String("FIXED"),
/// 						ThresholdValue: pulumi.Int(100),
/// 						GroupBy:        pulumi.String("ENTITY_TYPE"),
/// 					},
/// 				},
/// 				Rules: plugins.WorkloadStatusConfigAutomaticRuleArray{
/// 					&plugins.WorkloadStatusConfigAutomaticRuleArgs{
/// 						EntityGuids: pulumi.StringArray{
/// 							pulumi.String("MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1"),
/// 						},
/// 						NrqlQueries: plugins.WorkloadStatusConfigAutomaticRuleNrqlQueryArray{
/// 							&plugins.WorkloadStatusConfigAutomaticRuleNrqlQueryArgs{
/// 								Query: pulumi.String("name like '%Example application2%'"),
/// 							},
/// 						},
/// 						Rollup: &plugins.WorkloadStatusConfigAutomaticRuleRollupArgs{
/// 							Strategy:       pulumi.String("BEST_STATUS_WINS"),
/// 							ThresholdType:  pulumi.String("FIXED"),
/// 							ThresholdValue: pulumi.Int(100),
/// 						},
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.newrelic.plugins.Workload;
/// import com.pulumi.newrelic.plugins.WorkloadArgs;
/// import com.pulumi.newrelic.plugins.inputs.WorkloadEntitySearchQueryArgs;
/// import com.pulumi.newrelic.plugins.inputs.WorkloadStatusConfigAutomaticArgs;
/// import com.pulumi.newrelic.plugins.inputs.WorkloadStatusConfigAutomaticRemainingEntitiesRuleArgs;
/// import com.pulumi.newrelic.plugins.inputs.WorkloadStatusConfigAutomaticRemainingEntitiesRuleRemainingEntitiesRuleRollupArgs;
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
///         var foo = new Workload("foo", WorkloadArgs.builder()
///             .name("Example workload")
///             .accountId("12345678")
///             .entityGuids("MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1")
///             .entitySearchQueries(WorkloadEntitySearchQueryArgs.builder()
///                 .query("name like '%Example application%'")
///                 .build())
///             .scopeAccountIds("12345678")
///             .description("Description")
///             .statusConfigAutomatic(WorkloadStatusConfigAutomaticArgs.builder()
///                 .enabled(true)
///                 .remainingEntitiesRule(WorkloadStatusConfigAutomaticRemainingEntitiesRuleArgs.builder()
///                     .remainingEntitiesRuleRollup(WorkloadStatusConfigAutomaticRemainingEntitiesRuleRemainingEntitiesRuleRollupArgs.builder()
///                         .strategy("BEST_STATUS_WINS")
///                         .thresholdType("FIXED")
///                         .thresholdValue(100)
///                         .groupBy("ENTITY_TYPE")
///                         .build())
///                     .build())
///                 .rules(WorkloadStatusConfigAutomaticRuleArgs.builder()
///                     .entityGuids("MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1")
///                     .nrqlQueries(WorkloadStatusConfigAutomaticRuleNrqlQueryArgs.builder()
///                         .query("name like '%Example application2%'")
///                         .build())
///                     .rollup(WorkloadStatusConfigAutomaticRuleRollupArgs.builder()
///                         .strategy("BEST_STATUS_WINS")
///                         .thresholdType("FIXED")
///                         .thresholdValue(100)
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:plugins:Workload
///     properties:
///       name: Example workload
///       accountId: 1.2345678e+07
///       entityGuids:
///         - MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1
///       entitySearchQueries:
///         - query: name like '%Example application%'
///       scopeAccountIds:
///         - 1.2345678e+07
///       description: Description
///       statusConfigAutomatic:
///         enabled: true
///         remainingEntitiesRule:
///           remainingEntitiesRuleRollup:
///             strategy: BEST_STATUS_WINS
///             thresholdType: FIXED
///             thresholdValue: 100
///             groupBy: ENTITY_TYPE
///         rules:
///           - entityGuids:
///               - MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1
///             nrqlQueries:
///               - query: name like '%Example application2%'
///             rollup:
///               strategy: BEST_STATUS_WINS
///               thresholdType: FIXED
///               thresholdValue: 100
/// ```
///
///
/// Include static status
///
/// > You can use this during maintenance tasks or any other time you want to provide a fixed status for your workload. This overrides all automatic rules. [See our docs](https://docs.newrelic.com/docs/workloads/use-workloads/workloads/workload-status#configure-static)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.plugins.Workload("foo", {
///     name: "Example workload",
///     accountId: "12345678",
///     entityGuids: ["MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1"],
///     entitySearchQueries: [{
///         query: "name like '%Example application%'",
///     }],
///     scopeAccountIds: ["12345678"],
///     description: "Description",
///     statusConfigStatic: {
///         description: "test",
///         enabled: true,
///         status: "OPERATIONAL",
///         summary: "summary of the status",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.plugins.Workload("foo",
///     name="Example workload",
///     account_id="12345678",
///     entity_guids=["MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1"],
///     entity_search_queries=[{
///         "query": "name like '%Example application%'",
///     }],
///     scope_account_ids=["12345678"],
///     description="Description",
///     status_config_static={
///         "description": "test",
///         "enabled": True,
///         "status": "OPERATIONAL",
///         "summary": "summary of the status",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.Plugins.Workload("foo", new()
///     {
///         Name = "Example workload",
///         AccountId = "12345678",
///         EntityGuids = new[]
///         {
///             "MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1",
///         },
///         EntitySearchQueries = new[]
///         {
///             new NewRelic.Plugins.Inputs.WorkloadEntitySearchQueryArgs
///             {
///                 Query = "name like '%Example application%'",
///             },
///         },
///         ScopeAccountIds = new[]
///         {
///             "12345678",
///         },
///         Description = "Description",
///         StatusConfigStatic = new NewRelic.Plugins.Inputs.WorkloadStatusConfigStaticArgs
///         {
///             Description = "test",
///             Enabled = true,
///             Status = "OPERATIONAL",
///             Summary = "summary of the status",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic/plugins"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := plugins.NewWorkload(ctx, "foo", &plugins.WorkloadArgs{
/// 			Name:      pulumi.String("Example workload"),
/// 			AccountId: pulumi.String("12345678"),
/// 			EntityGuids: pulumi.StringArray{
/// 				pulumi.String("MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1"),
/// 			},
/// 			EntitySearchQueries: plugins.WorkloadEntitySearchQueryArray{
/// 				&plugins.WorkloadEntitySearchQueryArgs{
/// 					Query: pulumi.String("name like '%Example application%'"),
/// 				},
/// 			},
/// 			ScopeAccountIds: pulumi.StringArray{
/// 				pulumi.String("12345678"),
/// 			},
/// 			Description: pulumi.String("Description"),
/// 			StatusConfigStatic: &plugins.WorkloadStatusConfigStaticArgs{
/// 				Description: pulumi.String("test"),
/// 				Enabled:     pulumi.Bool(true),
/// 				Status:      pulumi.String("OPERATIONAL"),
/// 				Summary:     pulumi.String("summary of the status"),
/// 			},
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
/// import com.pulumi.newrelic.plugins.Workload;
/// import com.pulumi.newrelic.plugins.WorkloadArgs;
/// import com.pulumi.newrelic.plugins.inputs.WorkloadEntitySearchQueryArgs;
/// import com.pulumi.newrelic.plugins.inputs.WorkloadStatusConfigStaticArgs;
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
///         var foo = new Workload("foo", WorkloadArgs.builder()
///             .name("Example workload")
///             .accountId("12345678")
///             .entityGuids("MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1")
///             .entitySearchQueries(WorkloadEntitySearchQueryArgs.builder()
///                 .query("name like '%Example application%'")
///                 .build())
///             .scopeAccountIds("12345678")
///             .description("Description")
///             .statusConfigStatic(WorkloadStatusConfigStaticArgs.builder()
///                 .description("test")
///                 .enabled(true)
///                 .status("OPERATIONAL")
///                 .summary("summary of the status")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:plugins:Workload
///     properties:
///       name: Example workload
///       accountId: 1.2345678e+07
///       entityGuids:
///         - MjUyMDUyOHxBUE18QVBQTElDQVRJT058MjE1MDM3Nzk1
///       entitySearchQueries:
///         - query: name like '%Example application%'
///       scopeAccountIds:
///         - 1.2345678e+07
///       description: Description
///       statusConfigStatic:
///         description: test
///         enabled: true
///         status: OPERATIONAL
///         summary: summary of the status
/// ```
///
///
/// ## Import
///
/// New Relic workloads can be imported using a concatenated string of the format
/// `<account_id>:<workload_id>:<guid>`, e.g.
///
/// ```bash
/// $ terraform import newrelic_workload.foo 12345678:1456:MjUyMDUyOHxBUE18QVBRTElDQVRJT058MjE1MDM3Nzk1
/// ```
class Workload extends pulumi.CustomResource {
  /// The New Relic account ID where you want to create the workload.
  late final pulumi.Output<String> accountId;
  /// The composite query used to compose a dynamic workload.
  late final pulumi.Output<String> compositeEntitySearchQuery;
  /// Relevant information about the workload.
  late final pulumi.Output<String?> description;
  /// A list of entity GUIDs manually assigned to this workload. At least one of either `entity_guids` or `entity_search_query` is required.
  late final pulumi.Output<List<String>> entityGuids;
  /// A list of search queries that define a dynamic workload. At least one of either `entity_guids` or `entity_search_query` is required. See Nested entity_search_query blocks below for details.
  late final pulumi.Output<List<WorkloadEntitySearchQuery>?> entitySearchQueries;
  /// The unique entity identifier of the workload in New Relic.
  late final pulumi.Output<String> guid;
  /// The workload's name.
  late final pulumi.Output<String> name;
  /// The URL of the workload.
  late final pulumi.Output<String> permalink;
  /// A list of account IDs that will be used to get entities from.
  late final pulumi.Output<List<String>> scopeAccountIds;
  /// An input object used to represent an automatic status configuration.See Nested status_config_automatic blocks below for details.
  late final pulumi.Output<WorkloadStatusConfigAutomatic?> statusConfigAutomatic;
  /// A list of static status configurations. You can only configure one static status for a workload.See Nested status_config_static blocks below for details.
  late final pulumi.Output<WorkloadStatusConfigStatic?> statusConfigStatic;
  /// The unique entity identifier of the workload.
  late final pulumi.Output<String> workloadId;

  /// Creates a new [Workload].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workload]. {@macro pulumi_plugins_workload_workload_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workload(
    String name, {
    WorkloadArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:plugins/workload:Workload',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.compositeEntitySearchQuery = registerOutput<String>('compositeEntitySearchQuery');
    this.description = registerOutput<String?>('description');
    this.entityGuids = registerOutput<List<String>>('entityGuids');
    this.entitySearchQueries = registerOutput<List<WorkloadEntitySearchQuery>?>('entitySearchQueries');
    this.guid = registerOutput<String>('guid');
    this.name = registerOutput<String>('name');
    this.permalink = registerOutput<String>('permalink');
    this.scopeAccountIds = registerOutput<List<String>>('scopeAccountIds');
    this.statusConfigAutomatic = registerOutput<WorkloadStatusConfigAutomatic?>('statusConfigAutomatic');
    this.statusConfigStatic = registerOutput<WorkloadStatusConfigStatic?>('statusConfigStatic');
    this.workloadId = registerOutput<String>('workloadId');
  }

  /// Gets an existing [Workload] resource's state with the given [name] and [id].
  static Workload get(
    String name,
    pulumi.Input<String> id, {
    WorkloadState? state,
  }) {
    return Workload._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Workload._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:plugins/workload:Workload',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.compositeEntitySearchQuery = registerOutput<String>('compositeEntitySearchQuery');
    this.description = registerOutput<String?>('description');
    this.entityGuids = registerOutput<List<String>>('entityGuids');
    this.entitySearchQueries = registerOutput<List<WorkloadEntitySearchQuery>?>('entitySearchQueries');
    this.guid = registerOutput<String>('guid');
    this.name = registerOutput<String>('name');
    this.permalink = registerOutput<String>('permalink');
    this.scopeAccountIds = registerOutput<List<String>>('scopeAccountIds');
    this.statusConfigAutomatic = registerOutput<WorkloadStatusConfigAutomatic?>('statusConfigAutomatic');
    this.statusConfigStatic = registerOutput<WorkloadStatusConfigStatic?>('statusConfigStatic');
    this.workloadId = registerOutput<String>('workloadId');
  }
}
