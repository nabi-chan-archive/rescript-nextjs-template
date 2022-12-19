let default = (req: NextApi.req, res: NextApi.res) => {
  res
  ->NextApi.status(200)
  ->NextApi.json({
    "message": {
      switch req->NextApi.query->Js.Dict.get("message") {
      | Some(message) => message
      | None => "Hello ReScript!"
      }
    },
  })
}
