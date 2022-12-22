type response = {"message": string}

let default = (req: NextApi.req, res: NextApi.res<response>) => {
  res
  ->NextApi.status(200)
  ->NextApi.send({
    "message": {
      switch req->NextApi.query->Js.Dict.get("message") {
      | Some(message) => message
      | None => "Hello ReScript!"
      }
    },
  })
}
