type req

type method = [#GET | #POST | #PUT | #DELETE | #PATCH]

@get external method: req => method = "method"
@get external headers: req => 'a = "headers"
@get external query: req => 'a = "query"
@get external params: req => 'a = "params"
@get external cookies: req => 'a = "cookies"
@get external body: req => 'a = "body"
@get external env: req => 'a = "env"

type res<'a>

@send external json: (res<'a>, Js.Json.t) => unit = "json"
@send external send: (res<'a>, 'a) => unit = "send"
@send external status: (res<'a>, int) => res<'a> = "status"
@send external redirect: (res<'a>, string) => res<'a> = "redirect"
@send external redirectWithStatus: (res<'a>, int, string) => res<'a> = "redirect"
@send external revalidate: (res<'a>, string) => res<'a> = "revalidate"
@send external setHeader: (res<'a>, string, string) => res<'a> = "setHeader"
