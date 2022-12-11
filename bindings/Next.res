type req

type method = [#GET | #POST | #PUT | #DELETE | #PATCH]

@get external method: req => method = "method"
@get external headers: req => 'a = "headers"
@get external query: req => 'a = "query"
@get external params: req => 'a = "params"
@get external cookies: req => 'a = "cookies"
@get external body: req => 'a = "body"
@get external env: req => 'a = "env"

type res

@send external json: (res, 'a) => res = "json"
@send external send: (res, 'a) => res = "send"
@send external status: (res, int) => res = "status"
@send external redirect: (res, string) => res = "redirect"
@send external redirectWithStatus: (res, int, string) => res = "redirect"
@send external revalidate: (res, string) => res = "revalidate"
