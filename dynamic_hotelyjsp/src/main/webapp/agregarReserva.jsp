<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="..\paginas\similares\encabezado.jsp"%>
<form method="post" action="hacerReserva.jsp">
          <div class="form-floating mb-3">
            <input type="text" name="nombre" class="form-control rounded-3" id="floatingInput" placeholder="Nombre" required>
            <label for="floatingInput">Nombre</label>
          </div>
          <div class="form-floating mb-3">
            <input type="text" name="apellido_paterno" class="form-control rounded-3" id="floatingPassword" placeholder="Apellido Paterno" required>
            <label for="floatingInput">Apellido Paterno</label>
          </div>
          <div class="form-floating mb-3">
            <input type="text" name="apellido_materno" class="form-control rounded-3" id="floatingInput" placeholder="Apellido Materno" required>
            <label for="floatingInput">Apellido Materno</label>
          </div>
          <div class="form-floating mb-3">
            <input type="text" name="direccion" class="form-control rounded-3" id="floatingPassword" placeholder="Direccion" required>
            <label for="floatingInput">Direccion</label>
          </div>
          <div class="form-floating mb-3">
            <input type="number" name="dni" class="form-control rounded-3" id="floatingInput" placeholder="DNI" maxlength="8"
            oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"  required>
            <label for="floatingInput">DNI</label>
          </div>
          <div class="form-floating mb-3">
            <input type="number" name="telefono" class="form-control rounded-3" id="floatingPassword" placeholder="Telefono" maxlength="9"
            oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"  required>
            <label for="floatingInput">Telefono</label>
          </div>
          <div class="form-floating mb-3">
            <input type="email" name="email" class="form-control rounded-3" id="floatingPassword" placeholder="Email" required>
            <label for="floatingInput">Email</label>
          </div>
          <div class="form-floating mb-3">
            <input type="date" name="fecha_entrada" class="form-control rounded-3" id="fecha_entrada" placeholder="Fecha Entrada" required>
            <label for="floatingInput">Fecha Entrada</label>
          </div>
          <div class="form-floating mb-3">
            <input type="date" name="fecha_salida" class="form-control rounded-3" id="fecha_salida" placeholder="Fecha Salida"  required>
            <label for="floatingInput">Fecha Salida</label>
          </div>
          <div class="form-floating mb-3">
            <select name="habitacion" id="habitacion" class="form-select">
              <option value="1">Pricing</option>
              <option value="1" selected>Habitacion 1</option>
              <option value="1">Other</option>
            </select>
            <label for="floatingInput">Habitacion</label>
          </div>
          <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" type="submit" value="Guardar">Guardar</button>
        </form>
</body>
</html>