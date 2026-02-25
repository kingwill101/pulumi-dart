// Copyright 2016-2022, Pulumi Corporation

using System;
using Xunit;

namespace Pulumi.Automation.Tests
{
    public sealed class DeploymentsApiFactAttribute : FactAttribute
    {
        public DeploymentsApiFactAttribute()
        {
            if (string.IsNullOrEmpty(Environment.GetEnvironmentVariable("PULUMI_ACCESS_TOKEN")))
            {
                Skip = "PULUMI_ACCESS_TOKEN not set";
            }
            else if (string.IsNullOrEmpty(Environment.GetEnvironmentVariable("PULUMI_TEST_DEPLOYMENTS_API")))
            {
                Skip = "PULUMI_TEST_DEPLOYMENTS_API not set";
            }
        }
    }
}
