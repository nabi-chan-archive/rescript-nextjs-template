This is [NextJS](https://nextjs.org) with [ReScript](https://rescript-lang.org/) project.

## How to use

### NextJS Page

_Note: You should make `page.js` file_

```rescript
let default = () =>
  <div className="px-4 py-8 container mx-auto">{"Hello NextJS!" -> React.string}</div>
```

### NextJS Api Route

```rescript
let default = (req: NextApi.req, res: NextApi.res) => {
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
```

## To-Do

- [x] tailwindcss
  - [x] More simplify tailwindcss (how?)
- [x] NextJS API `NextApiRequest`, `NextApiResponse`
- [x] Multiple page support
  - [ ] More better multiple page support
