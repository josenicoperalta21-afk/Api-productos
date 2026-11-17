const { Router } = require("express");
const controller = require("../controllers/proveedor.controller");
const router = Router();

router.get("/", controller.listarProveedores);
router.get("/:id", controller.obtenerProveedores);
router.post("/", controller.crearProveedores);
router.put("/:id", controller.actualizarProveedores);
router.delete("/:id", controller.eliminarProveedores);

module.exports = router;
