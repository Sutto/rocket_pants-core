# RocketPants Core

As part of RocketPants, this repository contains the core code that handles
error to exception mapping and anything common between client and server.

On it's own, not super useful. But when used in combination with [Rocket Pants](https://github.com/filtersquad/rocket_pants),
this lets you build client and server stuff.

## RocketPants::Error

`RocketPants::Error` is a `StandardError` subclass designed for being mappable into
a client HTTP response. Namely, exceptions can be associated with:

* An error name
* A http status code (e.g. 422)
* Optionally, any extra context

## RocketPants::Errors

Provides a register mapping symbolic error names to `RocketPants::Error` sub classes.
Included in this is a set of default exception classes.

## Built-in Errors

<table>
  <tr>
    <th>Error Key</th>
    <th>Exception Class</th>
    <th>HTTP Status</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><code>:throttled</code></td>
    <td><code>RocketPants::Throttled</code></td>
    <td><code>503 Unavailable</code></td>
    <td>The user has hit an api throttled error.</td>
  </tr>
  <tr>
    <td><code>:unauthenticated</code></td>
    <td><code>RocketPants::Unauthenticated</code></td>
    <td><code>401 Unauthorized</code></td>
    <td>The user doesn't have valid authentication details.</td>
  </tr>
  <tr>
    <td><code>:invalid_version</code></td>
    <td><code>RocketPants::Invalidversion</code></td>
    <td><code>404 Not Found</code></td>
    <td>An invalid API version was specified.</td>
  </tr>
  <tr>
    <td><code>:not_implemented</code></td>
    <td><code>RocketPants::NotImplemented</code></td>
    <td><code>503 Unavailable</code></td>
    <td>The specified endpoint is not yet implemented.</td>
  </tr>
  <tr>
    <td><code>:not_found</code></td>
    <td><code>RocketPants::NotFound</code></td>
    <td><code>404 Not Found</code></td>
    <td>The given resource could not be found.</td>
  </tr>
  <tr>
    <td><code>:invalid_resource</code></td>
    <td><code>RocketPants::InvalidResource</code></td>
    <td><code>422 Unprocessable Entity</code></td>
    <td>The given resource was invalid.</td>
  </tr>
  <tr>
    <td><code>:bad_request</code></td>
    <td><code>RocketPants::BadRequest</code></td>
    <td><code>400 Bad Request</code></td>
    <td>The given request was not as expected.</td>
  </tr>
  <tr>
    <td><code>:conflict</code></td>
    <td><code>RocketPants::Conflict</code></td>
    <td><code>409 Conflict</code></td>
    <td>The resource was a conflict with the existing version.</td>
  </tr>
  <tr>
    <td><code>:forbidden</code></td>
    <td><code>RocketPants::Forbidden</code></td>
    <td><code>403 Forbidden</code></td>
    <td>The requested action was forbidden.</td>
  </tr>
</table>