let default = (req: Next.req, res: Next.res) => {
  res
  ->Next.status(200)
  ->Next.json({
    "message": {
      switch req->Next.query->Js.Dict.get("message") {
      | Some(message) => message
      | None => "Hello ReScript!"
      }
    },
  })
}
