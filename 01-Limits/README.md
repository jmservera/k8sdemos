# Demo

Create some namespaces:

* limited
* limitrange
* policylimited
* unlimited

## Limited

Apply resource quotas

```bash
> k describe namespace limited
Name:         limited
Labels:       kubernetes.io/metadata.name=limited
Annotations:  <none>
Status:       Active

Resource Quotas
  Name:     compute-resources
  Resource  Used   Hard
  --------  ---    ---
  cpu       500m   1
  memory    256Mi  512Mi

No LimitRange resource.
```

## Limitrange

Apply limit range

```bash
> k describe namespace limitrange
Name:         limitrange
Labels:       kubernetes.io/metadata.name=limitrange
Annotations:  <none>
Status:       Active

No resource quota.

Resource Limits
 Type       Resource  Min    Max    Default Request  Default Limit  Max Limit/Request Ratio
 ----       --------  ---    ---    ---------------  -------------  -----------------------
 Container  cpu       100m   2      500m             1              -
 Container  memory    128Mi  512Mi  256Mi            512Mi          -
```

# Policylimited

Apply limits policy to namespace

