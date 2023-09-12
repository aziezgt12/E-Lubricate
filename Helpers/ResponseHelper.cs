using Microsoft.AspNetCore.Mvc;
namespace Helpers;
public static class ResponseHelper
{
    public static IActionResult JsonResponse(int code, string message, object response = null)
    {
        var result = new
        {
            Code = code,
            Message = message,
            Response = response
        };

        return new JsonResult(result);
    }
}
